Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFF53D45FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786291834; cv=none; b=NMdQJxkrX6yn6Fd+YmuRLgQEBvha6N4VST/6bPr1Q0mXSPKBgRDl006mI/YMb3LEfvygK9gqr4Bs9jtaf0nHetdkwcm7AU2DvqxOFcW9KeT76sejE8j724DnCkww+SWOR6f93TNbJPz5qouWiVBK7KnADXlGP5D4xVb/Krl5ArY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786291834; c=relaxed/simple;
	bh=QzgvL831hpY+iOdKYvngvC2PqA9z3FBhWS8xmrtj0eo=;
	h=To:Subject:From:Message-Id:Date; b=J2bi9pMQtyC8v/0C9SOmP7Ayb0D4EYZ4KKCIILCp1l5zBKgR0lL3DLtM1H0kUX4iHrD7AsDCrUxLMy1/3C4VxHypII1lJzDKHNy1qt4hrB3lo5MLlEMHhPSLiNQxpcL0Ozlrscx+eAz522YO9UcURzrr/Cw5p7ArWQiro9cu9N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDvFxwOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDvFxwOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7238C2BCF6
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786291833;
	bh=QzgvL831hpY+iOdKYvngvC2PqA9z3FBhWS8xmrtj0eo=;
	h=To:Subject:From:Date:From;
	b=WDvFxwODgrjwF4YXecnxqeIDboFi76RSvPDSW/pPnMdETIx5aGkwTDMOefCdkmDTH
	 4sHJ7ZQVVKfLIDLgj1pmVga1j2P+9WQpVHfzknh7E+vdi+g3acTRPDvZhQZwxUArDN
	 r6ABgTSDBTARc3RYeja/a+PfIh7VhxnV6ioRCnsIkcMCLqIyiWM7+fn1u4KpOCSZDP
	 5F28XwQK780BJPXvpukPxGLFGcU2+40eo9LeD4XIvJbPwnR2IQZxnqNIR+5QAS//jk
	 t2C3RjGUluq5QcUfwtJqx8/fX1AT4LmFYHKFSx9ZcKJX9jyIAPu9hICg7gT6YMzKu5
	 +b/F44kUKjDuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6A8C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629183374.31181.13961715388991732448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ec11df9f27e1286dcf178eb28fea32655c4922582decfdf3fcf410e7846ea3
Date: Sun, 09 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786291833
