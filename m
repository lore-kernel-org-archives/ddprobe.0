Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB7336C0DD
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773184494; cv=none; b=s7rNfSvcC3DZCvyeIClovoEFeNaJOs1nXniJZtZBGZx89H2zePaQPocjS72XyCTsdZcItBcS+mswE5YGaXwUe4sPUgVzEVJTNgkDsgyoU/FxUR/LetImMEMoVUy4lxhrWlVx8Pe+Vg2L+GIjdAMFZnsC5s7JhXx6Hz7vO2Vb8pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773184494; c=relaxed/simple;
	bh=cTwC//eAQo3KI65057eyMR88i9KD9cOIw2+tLJYr+G8=;
	h=To:Subject:From:Message-Id:Date; b=E+xhG0+7iBxd8n9G0TXaA0xtT+xR4SD1310wxyFYu3+Hthz7w6Nza9BaN1bgheEWGGD10YneI3s6suSqNuVVVAnT8s2XO7g8BYlyEQtfHcHSYb9tbJQT321veK+3rLXw2OCrOHYovq3PF95/VVDL43wMskqTymtGM30+wJzHVIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVP0vHxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVP0vHxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78A8C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773184493;
	bh=cTwC//eAQo3KI65057eyMR88i9KD9cOIw2+tLJYr+G8=;
	h=To:Subject:From:Date:From;
	b=aVP0vHxlOW/Y0w4x2oCxHE547e1J/RfyXOMIkWPWGCuPD16sLyTda58t6CCg3Lhti
	 YpUHrea4jHlWi8TkEHsR25oHO39zFv1GAmLJS/s/CWEkC8T5msFXkDOYPdvghV0+fe
	 EY3KDg9dw/IaHZg5uCUpvc13U/RNrYh9K1wwo15HLAY8g4wQs8r7IIPMYM+4CkbWSu
	 bpRi4XcNMWGSVbmrusDh32Le+7lNJfxaSwprAuWJUQsr/V79ZscLGXXk2l6HarEWTM
	 1sx5qiKllil9cUzD0TYwAmB2tx/xmjT80MoMeU0LYXhmoqI918p1iLaE7MaE2YY4Uf
	 c5+sJninYN93w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5AAFD88CC
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318449359.21104.11464505610487213093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51b1b92f8882aa931bf0905ea69ee84eb6b948c690bf6e9e458d985a809833e
Date: Tue, 10 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773184493
