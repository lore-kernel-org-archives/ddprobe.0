Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6468C1F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778297854; cv=none; b=tU+Ji5M0Q53sLQwon7ZHx0vghyRBdov4gP0QOZF6cwm+Ygsg1MsgnVnRyQr19cbNWUdpgk/L3vANeSOLNfTOeL7wLr9fer2t6Eks/EhZsKCgtcvk92P7AIe98LzdNqaexsumgPLJ4JbMcvE6LzfqI5Tx8tAoImO1BrdvNxfwRxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778297854; c=relaxed/simple;
	bh=gTAOU9kPzNyJ7ez+jI+n8tWCso5y0RIMf+6l7nYH8fY=;
	h=To:Subject:From:Message-Id:Date; b=AXE13RReaADCWGHV6I2AZakR488k6QWbxsTf1V++cVJclSGDbx36FHl3i7HpOgFih3NIoiOgPkrPRica6RJ1cyAcgC2g0ZNsO9H+YmWBpeZSaQF8b2K/4tm2Nk14F9e4R7fRCtuWMfsdVbGDGdco9J2gsMiAEf3EXtpJUYlncLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aC9GXBP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aC9GXBP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A80C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778297853;
	bh=gTAOU9kPzNyJ7ez+jI+n8tWCso5y0RIMf+6l7nYH8fY=;
	h=To:Subject:From:Date:From;
	b=aC9GXBP3oORe5ty4346p8nHBx4Ll56dvv2PepwH30HpCqyDA7D4rxa0tH1P/4ROar
	 MUfZl/vw0lMPCEScwt0M3GRNL7mOFtNBpOs0ubInIP+YLFV10/1XwXEoT0yWpeMNEd
	 e3clsqMqMW1C7gzzzHeQVn/OrFdewoy0PQCJQSHlZeMxomh0OphSn7d4ij5lL7meYJ
	 nrxwNlheBaWnevvx6w559IGSvb/cp9zyTBriXkVqrYmn0zI5UMPUPDIwsgcwauaWdW
	 fnJlKaCWa4UpK3gzMCAX5xN0KN53bAsp28+Kwg51ruthhuxrlJRdtunxU5+yyoF7VC
	 gRL1aprErFW4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E41CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829785368.30887.14611015615044431398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6917242bc5d0d8aa2b011f08fbc3ff13622a9d4d28189d289a9d523fb0fb6079
Date: Sat, 09 May 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778297853
