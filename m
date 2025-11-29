Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130B120B7ED
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764438174; cv=none; b=tWQFNZ3mbshpgsYvNu9BKzNGTldPm3yTCPAGRRSy1L3Kn4XkIbSYDKJUNKnmCTyeGlzJOb8+1rOpWOnZzeBHeUW4u5BQBTo4SnjE3jBQHZC8xb05bNH17wHkiWDwNmYXM+LiKhexXb3X14tLyKxZE1TSSgoAba6V5Jbj9UQxI6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764438174; c=relaxed/simple;
	bh=7a33hZe2+2raE13WaYkAUcIGvOEc5CRJkygdlt30/kM=;
	h=To:Subject:From:Message-Id:Date; b=c/KMf7QTHgPL/wj0cH4sR0tiTxyBD1490qQfff760Bxyrk89XbEMz5yJXVhUJrw5mO9LYHe3rB5aQ0c4HL2F2O+cJkZGzavQTelzqHV59kx3VgaOyz38qQ7roTADs/qA2aO+Fr3B2EZNbjywi01pJ7zO5Ued3l4DR9Ublm29Cww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/NMj8l6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/NMj8l6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CA9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764438173;
	bh=7a33hZe2+2raE13WaYkAUcIGvOEc5CRJkygdlt30/kM=;
	h=To:Subject:From:Date:From;
	b=W/NMj8l62X/R+fetoi+UoXr6I1jUR/CVj+AijhsUVaDrMl1WDIpos2UN3/LH5Igy5
	 sJ+9xz6bPvb3dAVOW7XVxYv+VIIPIlMhEhqGp+i48pcszL+aBB3QyOU/1q13Zb7wZz
	 WoSSQT7xczFjanh6C+PLKckFvl0KMQwb4imCJk73dEWiy77jxNME7ETIXcz7980RIg
	 MMzid5xtqSCUhUvuF4JF+sYuacXwl/DVr2MpWl80iRJqwsWZE7ycOuahFMTqlhOOZP
	 5ZY9a0HqUuQaOl/WfollbrykwxccMmlPG1iN9numvgv/5xP1WiHGbTZAqbM6R28gqy
	 ivORtSYKuraPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96803D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443817358.16756.16623163984162964408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28cd5c1cba2414ee7273499ac54141cf7c6663efbe964eb292ba1f0c328f71b
Date: Sat, 29 Nov 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764438173
