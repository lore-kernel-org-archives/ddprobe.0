Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1538934BA3B
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759033794; cv=none; b=Ek1nGD7/Qgmg+1yE2NYEq+t3lEI5VseHV/GiiqQRpdemni3V/58EJI/lJW4yVMmVqPWFNdXnQMHtIrJdiA5OKLIpxhht6TKlHAD2UbjzknbxLAWPWkcfcFR/wMqR22LVwH3UHWxyPTVGTWVFbM+iYH/SGzA2X7MRPEB01rLANms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759033794; c=relaxed/simple;
	bh=urW7dEE9DcdrJWRgUHUM2uEua7CuDpYZ+FsFZdVQFYY=;
	h=To:Subject:From:Message-Id:Date; b=bzhG4517PeOtWUiIK5DnYbLa2gEbvm0noJ0zIJBwkaEwFNa6uoBlB0lUWgmPSzFBFt+FKRR8E0I5EN4FC2d/0DGenp0dtvU/0BVF5A/Bd14xEn1hWGuYJEyLlvmnLTWp0injXu9DG7TkN0hprp4G9LlhKukTe1l3GiVhyHrjHwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bva0AoVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bva0AoVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A459AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759033793;
	bh=urW7dEE9DcdrJWRgUHUM2uEua7CuDpYZ+FsFZdVQFYY=;
	h=To:Subject:From:Date:From;
	b=Bva0AoVXxQF6Dvw8SfJFwYeoUGO1V7PMZaJk6wpCA2vVb0htLVpdszsLjPU2JmyKa
	 L1xBR4u9IkoFYpbI6d7BVnkk7JeYXOZgfaTaNipcldL7Pfv2k+0C+7DMcCIZsJz6aY
	 U+PkZ4IGbq3V16tmbzFeavl/dQzLBe0frJBk7DX2UNQTve8q7ufStlyxaNQyaZ/y0n
	 ZQa4EoYxOtTAlYDfLjHojRFgfoTHouzppMwa0Kg4xYB2yS8rFaNJsiXOQtUEpei4j9
	 kBOZh5dowfcpXuKipwDanNSbcXwNb27lGntnqMIeTbBmxdgJUjPA3lu/bCpLqLDWJh
	 e93Ea5mb1IXSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220ACAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903379358.22754.2841422809161556405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0871ab36112d017e8832f91c081930b607a1a776f46effcdaf1bdd9f2677949f
Date: Sun, 28 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759033793
