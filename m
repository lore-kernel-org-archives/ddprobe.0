Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279951B0F29
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734213954; cv=none; b=ftdMgCr2n1t8ftiE7pBktyco0bxlqITaK7zlz5v22qxiPtICTan8C0+a23wOwor/ZGt0GdD1lcv41BeOPDtwTf3tyTHlBz77H9e89NUFghRreS0l+haHZdGcERSJByu2lJWFRGQY3KLcX9i4Arij0VZEu0/Hy/modKwjdvhSr94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734213954; c=relaxed/simple;
	bh=IwN/lFMAnY1Ycpj52vM5nlEWQVKgCwyNUYvBZOZazt4=;
	h=To:Subject:From:Message-Id:Date; b=Eu4ldUIFFMWjelsvn9zyAwy7ZfE4uqsChTxWFn28mdc1CKmoaK2SF3QyTcLd8/Xl7HCum8y6aHNHSVN1ZTmlAVBosGFfBsoQlPBMspll/8fzcFY1ZWaF+UijMeVpCMYmHmMGXKrOaVn+lEVKUkjx+E2A6hDg9b7I8fgKAPbi8gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+5PdF7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+5PdF7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA785C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734213953;
	bh=IwN/lFMAnY1Ycpj52vM5nlEWQVKgCwyNUYvBZOZazt4=;
	h=To:Subject:From:Date:From;
	b=o+5PdF7N3kCR0fLMYiqwb7ibB5o0isI3jp6G7Mb2GfAZaFFMoGJhGlZeXV4AjGJkA
	 cp171+VisuB6C8FF3KfqqWz3FtmtyJLvOpoBwT2IMc3DT75DFwibLUrubxHF1ZBZyF
	 YfvSmNZZalP0e4vTIM1uK+AyEEy9Tv9bHDMEksCk1WtMCpV49++lgQyrhv+/+BbXfe
	 kgaVqPDC5lbqif+PlvRmOmS1rut0x3UNz/sZUAUAdKBTnKNsIMeCAWHUxJf/RKtQ2U
	 iqavnWJjX1Vwh2bxqevzYfqiqIydpG06uGz9s13UCBMTxFoi9g6Tk4HeAcyJpC3uuz
	 YALn9jd54/7fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944E2E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421395358.27888.14856815247749693209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d800edd19779f5ad904e89fc3e954002aa35cabd615fa95db63e98c90acf74e
Date: Sat, 14 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734213953
