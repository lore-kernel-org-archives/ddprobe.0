Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199FA2EB870
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609594; cv=none; b=ZXDmCBGqMrzfGLw1iAu/D5nqIe5LUWNOeBeq2Bh9QRvr91W6KmrHsGNQkjPVxlQCpbEtDLX7bA4hZEG4RrxCEfrpt7lZFsTK1ZfYpvy+Z1fIo5YetjOKK6fF5By5riEQKbbbvy5tMZKxBGUlsZjsFDAuVGlpT02nrs5e4XtifKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609594; c=relaxed/simple;
	bh=DnELc4/49omwvxmnf3wT+1OHh+mLPVUD4fDMaQb+33I=;
	h=To:Subject:From:Message-Id:Date; b=b1WZ2synhX3eQQTlT79uROf5Jj6Qy2hVD/bHJmVXC2LqcdT4L8Z2DoeG23ugdeN2YC6nCKzsZLcpevS+CD8+O9rEUAJ1NPYjVIKHEStKA0ekMOj5qod3nD22mYYm2rY7V0UH/yCj4tKsdSZmIy+k0U/JxC0Ahjn/SHRH4su04Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8jur0Vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8jur0Vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA6AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755609593;
	bh=DnELc4/49omwvxmnf3wT+1OHh+mLPVUD4fDMaQb+33I=;
	h=To:Subject:From:Date:From;
	b=i8jur0VxXBsem86INlFAeUelFPO8op5D/T/HT6Q1xKJmMDlnMveUFxzDy2GfS9+yI
	 SubzXt+OAM5dzBN6TFtbtHlPmzoxmwZQDTW8yUQzQZLzbnBn+VFefeGv17c0aTA9Q3
	 V+GHJva8tftRpvhcW+wU8ez1lgCxbCth8Bfk0r4a/SirUMPE3A9QTC68cyLk7nZdSk
	 Go/x35zzBu2Go2Nc/dSlgiw2nqLdjX/Nf1dC8YYOS+VTu4mjjf5MGFmHwVekHgTTqK
	 XWU240jPefrwZ1lIezBRF9A1ckTZnlyD471lNWmdUmvrs5kRz85gYounFeyCU46ady
	 4uF+BFxfi/DpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFCBCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560959357.28832.2015511277130701544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2f2f6136d24ee79dc81767250816fbbd655ccc2d23e7a144debd70dbd3293f
Date: Tue, 19 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755609593
