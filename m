Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D91340DFCD
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774754694; cv=none; b=Kb67KfVNFu3HcPdWuRDFQ3sLVux7P8KOdrGSAhwvyJFRM+PoZZSzCdxQU2SjINEYPUA0ccrqr9CDmUPRXajT9em12rRlBaf6UqQieUfoUVAQ44Lyiig2RrU++2VLSycqXeG3YwleLADp3sdEHoFoRIe8EkEg965I5vnYo68jtfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774754694; c=relaxed/simple;
	bh=CQ4J1uzniSyZUiLEpShO4rFl0Q+tWtMwvwwSYpxCngo=;
	h=To:Subject:From:Message-Id:Date; b=O+H+clLUkuzdYbRJD6Sp8d1eyC2aax1RiASmT9uFn/T9HH+ZFd7TLtPbOpFbG1/RddWxKfpX4VGTfmBlvF1867TK9bNcrYgH3nj/6q2MzZ7jBb0KG6pm87N1cG6bsBX6IZWnO+8hVEEoDIVAImCkJ8xcFIyno1UFFIMa+J6T+qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ev1e0tzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev1e0tzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98B3C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774754693;
	bh=CQ4J1uzniSyZUiLEpShO4rFl0Q+tWtMwvwwSYpxCngo=;
	h=To:Subject:From:Date:From;
	b=ev1e0tzLMMzdiTRvHCah2dmmYHjdzJuwwiVsg2Ol75di3BViJ7Ex0FlUFBtm3mMEd
	 W4Q+7hQ6N7TcjP4qzJ/DX0VrSmqKDxMGRbGZgXuAEAUBoheledtGmVYs8QdM7XLg9f
	 m9TGJUIY4SDYGkyd3hPJ1QSKgS5T2Ptf/iIXJ+02gM/UObuIzOYouFLCR6lp4SP8Zc
	 i24t3uH9OXyUgJMIhk7OK/XJ3eIVoC6CvGtR8ZMARCfX+gzNECD7M5hTJwyUDJ24ye
	 5NCE95hDNhFbRDepartqLZGb5zBrGCp3o4xtFzL8Cubl5ktwAwX2kBFJJ/J8ZCeHDO
	 2W2+xHoXCFwGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9423310D1494
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475469358.27695.13508266898940381660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1485a393c9f2d024748680f5256bc15489158e2db834b7787cc2d927fbb1ec92
Date: Sun, 29 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774754693
