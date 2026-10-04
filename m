Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC9C3BE623
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791148834; cv=none; b=eIcCsAqGYh+U/p78sw1r4rjFmo8w/8eUY6ls1M/siReeRsfXQmN4xBBkfLVYYJsNlNeztm8K0breH1xp4ezuOj+17liuCR+KtUMi8K31BHkZ/zfgwum25cIYRUS66i9s76nzniStTqbU0twLyyqfpDiFkrQNEQlsUIHQk48HL8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791148834; c=relaxed/simple;
	bh=k+1akrQ6zYEhZ3i+LnX3mfBJ5+O+n1k/MJw/xew+NV8=;
	h=To:Subject:From:Message-Id:Date; b=GpmKn7maxoBbmAh/3IY6eVtAXLnTBTCbcn3jMgUSsc0SzlOtp6u8hGse/qM3qyO+Cv0EdbY+plQLKVqSNkDgN2cFZYPTCAlAP1msNaJR0DuwdjCvOUPBx+HU9ZOdLz6q9VM0XpE05NNFrF63iQGAyzHjgJ6IC3hCgSJZF8qKOzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGNdvyPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGNdvyPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10FFC2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791148833;
	bh=k+1akrQ6zYEhZ3i+LnX3mfBJ5+O+n1k/MJw/xew+NV8=;
	h=To:Subject:From:Date:From;
	b=cGNdvyPBuVBNvBDXZeDSpqEbKfm4gHkm8WbMwmLNIveEu/ClFPARZfCJzSe8rRPa0
	 GS/TvLrQI6YRFo4fB7uZTJM0+f/vpKc17RxkR9nB6deB3b6/zoyncvTDVJJYYJn/TP
	 cFuHf912mQGC98P5v8f++xQeS76QZNuQHrNozKhVksIhk0pYQW4V3WMHYLMgNv3OUi
	 s741cX7LkInEt07ELVmUmOUyY84fDP2ro/4h3moVPVT0YdVW4SPPoZ8tjj262HRA9p
	 LuyJy+/q4Qu1auw7IeoXOihfgofAKR4/7fqpE7xo+k6QbKS7t2KVO7Sl13oyuDdjnD
	 O9rjvhiiog0Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D46CA5FFC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114883371.22568.17551433220462708996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511ab0347f529bc2f90ff6d9ae969317bd681fd23c95aa2e441a456d06661116
Date: Sun, 04 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791148833
