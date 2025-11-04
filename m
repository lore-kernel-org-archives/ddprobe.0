Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A47EDDA9
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762294794; cv=none; b=hPpYHtsrgAc+h0LgCr/hGc2beOLvtCCUlzd74VsQb2RiGOR+0RvvpG/eiXpfpr1fWbD3x2iDV8ocQlE9usnFeo/KUv3aKl+Ixr09vCuyWITxf/gNkvf8wLAjDgl96N6YTB2SqPtSNS83VmLPzheeIj1GaX9swa3740VpsxfB9ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762294794; c=relaxed/simple;
	bh=d5/97E83kVQzR2OreW5uOfN8+w4uAf1jc9dEgnukh7s=;
	h=To:Subject:From:Message-Id:Date; b=L+xDHpFvCDx1vWn2mdR0QxRl08Bw1TueSh8ANlcD14X/09j/bgPSSJwgD2q+2FQ3Nn3Uy3OgjIRBLz4xykVPzfTfjM5uWKroj31mB9WQAvbPmqNHNz5BTi51qgNAxmgx7BPrP7xMu3JXmbH8gZCrX6cQzLkjZzb5I30TAf7P7u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXbOtovq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXbOtovq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A5CC116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762294793;
	bh=d5/97E83kVQzR2OreW5uOfN8+w4uAf1jc9dEgnukh7s=;
	h=To:Subject:From:Date:From;
	b=lXbOtovqK3Vd4rJtPoZUpb7DmbKwin3KNKIzrejojbx1LDioGg10Rl4rnv9/mSxzZ
	 DgJtpcdSzCDjWq1CV+5Gd/uOAbGViWex8EWc4WYym7saNazxoCGja6Dbe8VcmzHRnw
	 F65pa/DEVctmryiaD1gqWMuFGDuOr3VHmaPEzEwsG1WGpdWwTJc158WPIUhk9vTfyP
	 T0crQGP6D2ZBTFkBu6tTEZvsnt4Ng6p+UjkjogzeJCSabjR5m3p8e7RyvhehLWrOr5
	 Qr7jcv/+g3AaorUynLpk5jwOb5h6JA3yMN5sPtTYdJ1NZ+bnzp5XSB8jHYOJ74Liw4
	 DDjBh4539ZCkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9764FCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229479361.11186.2973798264422110514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25ce589abd6671ab4cf94691d760576fb9a0ec142f185b0b12879b750d6efe0
Date: Tue, 04 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762294793
