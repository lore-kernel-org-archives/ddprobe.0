Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CBAF4F1
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771825494; cv=none; b=kPOqAKWzIDXGutLD0HNjA/qDYX5KmlXMuObeZZ4LAoNKVcSXe0WozUQpEc9F6lqMzVvq2IXoTq4u/URhJoi8DQiARl4wWMr3WjV79DQziLKK+17lDeTinZPXwnpXRig1GsX75DLFq0mAMjRCFMEscK+a3N5Ek9kgC/hGWaRBbQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771825494; c=relaxed/simple;
	bh=qIF8+3xyT3zz9j62FyAWhHVMGz/Z4oGQnMSFg4LXfh8=;
	h=To:Subject:From:Message-Id:Date; b=Gsvg4+yzEXx+YRRx3/4Lre4eCwSeo5ktDbG/oat/tHw4uUYjBtfdfJcgoqs0I8EAITH+K8iyfqsEGIObhJnVUPTSrQfiSTDQdC5JCZiDLni45NQeETINH43xPWcytsFY8vJMVyQsSXC6SFr5WioIFkMHKrBOZBhA+c3IYkoTpyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFRLTOM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFRLTOM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9837C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771825493;
	bh=qIF8+3xyT3zz9j62FyAWhHVMGz/Z4oGQnMSFg4LXfh8=;
	h=To:Subject:From:Date:From;
	b=sFRLTOM5g7YcermEaJylpZ+pGPwdbwGjuzxAcAENpHTPzKpZkaKXbKtwg+OQeYn9D
	 i//AaQQhB8ElDyr7ssZM8qM7pis+A0llyblVNFaSEpCrz3wC+qTGBFtjg1+MA0XRKH
	 fOF+ujPJogY/ixGLvZK+eiMMZTwmC4AAhbmLaXn8/ADWm8WhnXjyEknQA+QEoH0jJr
	 UkxBDWayxWDt5pJYZsCnPtLGKZA7AIABH5Aymh3phq09UvJMAdYfN8M9nyZYwlA/Dy
	 qB7ZUAdTmWb85MF1CRPcFbC0DlV301Vtlt9VDChvLBTSz9i5ZXUiOKv0gKdUyoGTtL
	 5zuo8fG2mwdRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511AE98DE5
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182549358.9545.13258050937243891925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b01fb8b489efd81cee44a07da6508977fcb0f36a019bef3fe4f55fdca9b042
Date: Mon, 23 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771825493
