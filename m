Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B4C30C62F
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771442694; cv=none; b=WZPuOvtBPbCcUh9kgP0l8Vo8WxEi+G24D2lHYGHW/aAjMWNt+53ZaLgZ/sER8quIQ0e5g37hjpc947ID3gkkOxEkRIL0SycOhZv0LSOwgszym2N/DFKnX+QGVzKb+i82myCS1gRODD1zWRi/HEJUMXJbLcs1+dSp1fmOlcvxFfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771442694; c=relaxed/simple;
	bh=3G5cmlqonFNsA2Oj+spt55UuaxMYbEsjwQaZ1hOYy6w=;
	h=To:Subject:From:Message-Id:Date; b=MgDdqpOEkkPJk0q4p7cWLwCjgKisBIrKuGUME7kk3VwDXoJ/eNtTIZQwI5mb9SM/WEeGUUWD/Qfs4YytVgDZEPeIsSFVJ0oVtHLBSeqRyM11IHHM00T+XuEwIrSaE1Cg2AXr9SEBU/PD7scN7oGgLJbJ0nTuUN6v5mQUkXEoNQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2Q5OltX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2Q5OltX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D7EC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771442693;
	bh=3G5cmlqonFNsA2Oj+spt55UuaxMYbEsjwQaZ1hOYy6w=;
	h=To:Subject:From:Date:From;
	b=T2Q5OltX6VTWgKINJu4zD7RLHDpSWCcPnvfV8tu8xDy6XWYp8nXu7MWSvvnd+kqXZ
	 +bneY30LKeIkN55sSAgBiJD0Aie5WRMoAuEUwl4r1t8QBXfAaQBDroviQQ/H+Xcukp
	 PyZHkMfOXANOmqDJZXCpv2txu1kblSD2Y8CMBb+Lw102t/7/lDv8GnNREgwQznQvk0
	 BIGHFKQ+wXBoxtv59OADYCM0oQni2vvzK5AwrA2hs7rfS4rLotFihvSR1lcTXf5IRf
	 p3LNe+olcSTLHLUzZN36b6pBn2L5JLHBDbPDha+4Ap39PMyWzOy+DbtfcuuxcWKGLo
	 kYHIB135t4CSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C65E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144269360.20330.4728454813788546102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e2a9139739a5741682329dcb04cd8b0863e3b9f4384cdbe44deaf40eac3414
Date: Wed, 18 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771442693
