Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAF53126DA
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777206454; cv=none; b=NK7i148ZOEbAXA3oHeR78gJpXDmItF0FjpwDHAwMjZRDNSrLQdUOQxRtwElo/LYqVjs7crSyNm+7cj5mB85CUy9r67KN2FEB7X0tVhVT6kT481UsiREpu4NRlfcbuyDKZIqJ2j8w3Q7x27rPk8ZtCgfUEZ7aF6zm735gtaFP/GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777206454; c=relaxed/simple;
	bh=cU+b51Mcu1OZWqjVrClRPAzsefNh+sA4eWGDH9pP/lc=;
	h=To:Subject:From:Message-Id:Date; b=gPrk8ceVNME/JZDi8juZHBytsDTFNcUjh/gWsnydJ+jb6fy5xuqnFo0y/ijk7snjW86VsKNUSjOK4jaZOwX2a6598RyFrdQZCSdZv/TJWy1jIZXpr2j2Xhjf3tQS3GirJUj/IXDGIwGwn8v3OSmbNAPWwA6WDIGW7hSW0cj8dgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoFPEJ3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoFPEJ3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4FCC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777206453;
	bh=cU+b51Mcu1OZWqjVrClRPAzsefNh+sA4eWGDH9pP/lc=;
	h=To:Subject:From:Date:From;
	b=HoFPEJ3LGkAD994V+WXgl9noKq55Aw3ee1n3okfbdpXVuzxkFKjtpObzqlVqNqf7u
	 Ta+tRN3+cSjMWpJDv0g4j287opifW8yMdqVHDibeU8yZRYNDcx/fvbsTQfJtirdjln
	 3tN1QxbrqFra9iCM/aVEpH0HqLi/pKbkMbSfuh+9PeS7CXhb7vkUDwWDGfZFIA8fnq
	 m4l2uNEPVbxu9mShn/I/jURoH2fFBj856wvRet9B4N0rbHFeUylyZw0y/5wf7wtW3W
	 vDIBmVUBnEDKxiYtp4N/Fj1n28UPOKObbmg3p8JOUwQfxocNCBv2su5nrxADlZPv3c
	 qhL1mHK0qH16A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF032FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720645368.26939.18159537801198860858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a813cff29166b08762b223f5af42e53e5eb145d100f3383067176b708fe70b8a
Date: Sun, 26 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777206453
