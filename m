Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CE1212B37
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739804336; cv=none; b=rDhqRGiMO1SD1e5yjtTIuE8Q5kMjkvsXQx8jHWrPWb2aBP4ZZvsZjDuDrZXUz7+BcOm9LdtOP3Z5WqmeaODl847RaQrLdIdgszyM2JENRrrVlEDmH0kvd8m0+yEtIVu48I0dFmpmi/m+doC5QuAl3WhpEFBb4iv+gvu0w+tmBR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739804336; c=relaxed/simple;
	bh=xMf5iPhq3fkhBXTVYFljgTkgxf+9Te2v+Tv1aLiACn8=;
	h=To:Subject:From:Message-Id:Date; b=eKSe6iX/o2C5PwOuquBVY69B6pa+M1GFuUQgYWcU3LgAiEHUnUk3xJsI/1zfduRBVVT2RMOF7sA33ML8y0eB4Va0qCz5s45HA60Dx7X27EBr/DERl0HJyYd23Lw+yb+IgceAuXuNbRrECtzJQQlvR+kba1kpjBu9mc+8SCYJy4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLaJIRdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLaJIRdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A532CC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739804333;
	bh=xMf5iPhq3fkhBXTVYFljgTkgxf+9Te2v+Tv1aLiACn8=;
	h=To:Subject:From:Date:From;
	b=GLaJIRdpq80KPTz0wxnV0CxlzQ79jY2gOYQRC5jSKRV6r0lH9S9nOPBPMK1IOQD1/
	 6eXsPFlg12sSc3xMDX+xHc6KhspP2gUSfue/kRi1hgcTxlY96kd4q2/ffDfqyl11xx
	 bwsZcKfIl/NL3NBX9hggNvAaGWEqkoHteVoQDQyZQGp3KyRDoOVkBOJv4cCKnGhdy9
	 8fS2UmyQVdcpo2LemopwGzlPpWhf1g8B7kD9vsUfRnJuyHniMhDrbAzdZyO564AeB2
	 xt/AOM3NK9WTN8C6IAYxV9OM0nRrFvfhqNQJeeMZo5i3jHnc4DmNqSP7esDyLJnf0a
	 qynzlFFhxA8FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E5C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173980433359.23655.12234950438504490615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd35d7723f41917643ec503a08c94d404c867a51e5c78e6162a570653038db4f
Date: Mon, 17 Feb 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739804333
