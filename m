Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFD610E3
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723898754; cv=none; b=cBVs6L1Nov8gNfNTA2bHbbnAY7FRDwRJWkaZ7N3qTz9Ye3UILlUl4RxfUoBOXfeW4HlOE5Bg0sRC0vDTxU0maXaCl2S+PXpsCpFl+S2nOxuCWBASgQLkPqlvtBlHhm1/n/P79oUyQfNwTLsbNVfP8zE6dxXjIRdXah0Bcvn2w1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723898754; c=relaxed/simple;
	bh=Sv8cfZH3m0rmTvSGfpL2+98pbFl9Zgb+mvO01QbY1zw=;
	h=To:Subject:From:Message-Id:Date; b=e/6cnsjSS1la6GqvF/fk3Q9BPFLbxfDTar1Yeesd7DjM/vEqjziYJyD7Pz9NKCiyZI9X/jkut3gZiW8td7t4LXB3UF5h3r6p7laBVy9Z1YAbPAVhlGZX3HZXoHQFIqEAyUUCD1126EJTEI8w9BieXn/lhbwj2qjM2G4O4laK55Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Efkh2OTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Efkh2OTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F90C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723898753;
	bh=Sv8cfZH3m0rmTvSGfpL2+98pbFl9Zgb+mvO01QbY1zw=;
	h=To:Subject:From:Date:From;
	b=Efkh2OThGxrV7HbNPf7xUZMyJch4XjE8RnSgE1NDApYSlo9xL56mPoZgUCXJTURCp
	 E0e+yYcYH1SIlD3GckyaQOKeeJJ6GQ/iVm68il4XuHcaAW2MKjfemld38ud4NFY2GR
	 a3PBSNYMbxkenY2dGqRwFRT0fKNQ8Nhj5wgi1e1h8SvojKpgrFwNIu+mE7ar8xvg9o
	 YRwHuz7KNjVT2LNro8+cYtNON+d4WR1miDsKdoPoeheXwf7Wx4hBSU9J0phEANTvZl
	 xhTYokdGsyafUtBacJOr8D3hCD26zxdoiIg7+A1FkXDEVZoBwK+wcKFE/pir4D2sry
	 qNgp9KJDKh6bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C91C52D7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172389875360.24406.13119859477835589929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45aa3fddd4f1b1fa0e34bfb970adbbd636401c24f810a9427b3c633f1a4512b
Date: Sat, 17 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723898753
