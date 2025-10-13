Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA271FDA89
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760347794; cv=none; b=EWM8ZyOl7E/XhBGREzQ8s9pTxfRp1AiU6f1poSQMzsgM3S6U9HF8NHD5dbWilyre3Z6OFpzTV1EaPOK1yLde1O8F5NJEdm474wOJpLj5MZxgNQG4eJjLtZ/4KitVnAhngaHzAbDCkeZDUEdOfK0rnKCZcgV43VTMSb9lA+GA9Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760347794; c=relaxed/simple;
	bh=t4Uoj1QUTkFslx8TsNGe9t+i3IomDRd1rlO3D8SnIGc=;
	h=To:Subject:From:Message-Id:Date; b=Gu1GNUUmDfcPsJKX3HT2PhdS9xijv6bOK0c12hevhTJdinMqySYi85NJnWLEgR3RLzhlAxlH3I9TtiGvqDZk9fL6gZ5yOj/1PdTWk4SQ6uDUcFqPQQB+ggE6d5eGCF8VMUNWUa5Fp/GLO12Lo1AcZPd2muEi53eMwXDfbwVnjDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJcWm7nH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJcWm7nH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5002C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760347793;
	bh=t4Uoj1QUTkFslx8TsNGe9t+i3IomDRd1rlO3D8SnIGc=;
	h=To:Subject:From:Date:From;
	b=XJcWm7nHuorrUaizdLvmINLQEsVd/I5S42D1TUDaYDKj7511AS0UF4ZG/OnQY86Cf
	 Svsrv4EG76N2VqI3NWkbX6GVYjrekv5LldVSUyd7qwK3VDg59CDvdhJrFTRBWQEzHP
	 S8k+S2th8nbnVALTTdTkarG1lPNF+4k4w/KR3yTtrrGnWXqkCpt7KhljF0cS1HtvU+
	 pvfc209axKD6qZLbsoFsXRHUz7pNZaaYnFx71X1535DU+blyNVr+EIC7cgXRiNChmK
	 t6JfIvdw99vS8rPLTj52JQtdIstsZSPJoidEpwFcYOtYDW1q3ICJY8nNXNfSwENy79
	 KmbCzxQpEfFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E37CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034779358.18334.10126451638335847296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6f5ba564f237c5ba6aa1a93316ba9162e538566edb7acec32a7f184153bee7
Date: Mon, 13 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760347793
