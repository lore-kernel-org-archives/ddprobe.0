Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAEC258CD0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779637954; cv=none; b=KkY2WLfgOqf61+qte50GSTV0LLim8oR3beeGNn/EYEZcf0N2G4aMT0W3yWyfdBDNWMWheboFhfFkJrl4iRYWkmGyuamReB/77OFqlK9XRTiJnik1IYEOVvgmLWfyqqf4wMh+YMMMG0WLTAKWXH5HIie1JyE0kVf8xCtZCKbB1mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779637954; c=relaxed/simple;
	bh=Axh//BWKU2qkqUW13i7pjj4sUg63z4QJ4IrVYWjuf6Q=;
	h=To:Subject:From:Message-Id:Date; b=FI7pSas0rHkUYnPRx2DiCxKqGLA1LIyjpnFCTzPJSfBaq4QAsUWyFA1p8bNH6zHOSE8Xg+yQCJETrw2x9X0tlEv3jH+Ieoi+/+xgnYwnvW3bucIT8RMCwvwh5QuQapSFONrha5VGQbIKOjnfm4/8A0eHimWckElrA6cjO7w+vuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjfqaC60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjfqaC60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C443CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779637953;
	bh=Axh//BWKU2qkqUW13i7pjj4sUg63z4QJ4IrVYWjuf6Q=;
	h=To:Subject:From:Date:From;
	b=bjfqaC60KLp5EfsQ5uAAo5mcSXe/xAgMel+uCqY5w38oKP4OPn6Y8P0sCrp+088Hw
	 uy6y/FC463zNFXSUmTuhzn2e74NtUgzVTWoEn8FQzNTGlTxXhKRj1SdAmA5HNwGRHz
	 xGaE0nwu/YwF+L3yXfepIPlHK1qXD1yWTkoOZscocubcH7vIGN36S67/4iwF5YCnGb
	 iEvDOY1gRsa2MB4aRYX+Vyrf9SvgfUqDhqug5okOuY5I7pqPfAgTPrvZcyPf4GLxCq
	 1CnTyb5apYCofKkyXXchaOhTwo5ksaYxMobXPxXZobV41YffucW7TE74VIWDGX7bYW
	 esqpEZKZHF6sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC4FCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963795368.9056.5949542901585681450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc30bb4bb672b56312d2d7b55ce468a11ac4e79a4a22a75ab42ad9b49e3847a
Date: Sun, 24 May 2026 15:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779637953
