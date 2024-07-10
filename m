Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D98781723
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720619783; cv=none; b=AhjvEquO2GR1i88+2xPb9UAp32Onwqta1iGAS5YmDt9aOQ7dSazRMp6pSXZfq7RemW5RGyXKWi19tUkYgoXJnqpi8nezaKwFZP6oPEe4utFiWdoRJ5WVzIDdyc0gASmqrYQ/26D6xX8A6nb+cmyYZQnvUZVKfLYGALj/7UKA3JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720619783; c=relaxed/simple;
	bh=QRR8C91DMYvH1wo6p9ZXB9SWcxmSJMfjDldb+uhY9Ug=;
	h=To:Subject:From:Message-Id:Date; b=mMXaINRm026UIsU3dU0JMsf2hTamS8RSDJS7p+5o1cPCSDifw3AjzHZOkMy/4YPEdXAMaIkWINOPlgp/K9vMHq4hBCBCCNYJaQh4nhRcUnjGJUNIhg6WKPnQpGZyQ+cwKs8I3Q49SZYy9GT+oXqHA8WW9KIype+tQd701uFFmho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsru0Fo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsru0Fo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D71C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720619782;
	bh=QRR8C91DMYvH1wo6p9ZXB9SWcxmSJMfjDldb+uhY9Ug=;
	h=To:Subject:From:Date:From;
	b=rsru0Fo4+cSPakYumFcTrGaVWTM91S2ZEVxO7o1sFQ7OD3F7rL84d25CPf7SfUfF3
	 4wUfixvk5pjDBdT8nT5i3eEIvgWxCuxFHaa1cqa8DXHwXzQpDIR9kYEEd6WKRbVgLl
	 1gqlWEzsK8ecXJBSsMPi8GnrV1CijYC9/A6wxuLW9NhkZDuCEUyisUDnSPSOJFdCoe
	 P3E7tnEbZDOAAOzK+OG91cG+pJNsplMU/9zDTFktx6z96CV1RYwFQlRJ9IzyG3BX1G
	 IztL3jZehabPgQAjqKlHz/vDh1Uia2g3R/OWAcs3GnQnCcx8siybZc/4mkwTrXWsF7
	 DgY1WBvdcHItA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E60C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061978279.17318.5951103773110740298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896eebe37c38a908c92ccdc594d5800aee0f2bc9923063f9c95bc459db040732
Date: Wed, 10 Jul 2024 13:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720619782
