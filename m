Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A45224D4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732947355; cv=none; b=t9XRbVlwpQ41d3oEle8o96+NalNnR93sgYaF7SkOC7wy0nYsAHCv0so9hgVEpSnWdnxP5tmpu++4dmFlbZptEldyapL6KiXSh85/RsFaCvq5Ym7hgEKBBAXV7QYiMzWYVd8YrqcYQsVmIxJEbr17WSbxGNDJ6uomfjoBY1qduaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732947355; c=relaxed/simple;
	bh=aYGyOJMSvlOPopDhLnOjKLsG1RcmdzM9o4uaP8UWetY=;
	h=To:Subject:From:Message-Id:Date; b=Hxns/WCy9Dj7XATv72xu3xwO8zNH5c2w8KFHiw79+M39Y39kP+ifX1RhJFgl+UkC6Jrp1UGL6cj1RAyCxLDOBSBMsSA60hN3sjWYmwgd5Ad9/TLRuzXOoInOQpyAT/sPT25nLBnqY2UdXL8a3AKFQ7Cvb32/TW0e9+XLliysOAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qn7YpQm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qn7YpQm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF8EC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732947353;
	bh=aYGyOJMSvlOPopDhLnOjKLsG1RcmdzM9o4uaP8UWetY=;
	h=To:Subject:From:Date:From;
	b=qn7YpQm/hi+E2PwIxjxZqmPEpw7fmanXyP48VSr9eKcQdTmDqLKLFNGcTbCuylCiH
	 0/UNLu9SoyUIA1+YWQ8ALUvumnoOynlYnU9g8lYmVKgH4V4HGdhuRyoRdFMNqNedM9
	 fGJsnoTg+BiSajSJWxrt1qE4Aszdniz3WblcMLUK/Flyek3cXDXdQHiX0hwOz559g6
	 KUqSVZ+ohcTh2a0B4iCG+fCr0J0zi/x6Q+SPAzvjCnUk8z8zkdeoQX3C1Qn0HT9sn+
	 fKy9puc+Gr+aezMrwJ4/Glw6Hq59M0THWznZmPPHUIdMbc2YfSB0yoTIWG20EAEnaE
	 IV8qMs3CO0ymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE3D735F3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173294735358.14113.11626774861211995927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a79816edcaedd1097717211139851f35f40fdb9cf1996e871122244066320b
Date: Sat, 30 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732947353
