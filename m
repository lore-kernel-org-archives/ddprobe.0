Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBC4265620
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771816494; cv=none; b=olu4Xsc1Ef7BxJ4EgiTZrY95riVKlbegJF3TwemkS5rFHSPxPUm1/wpMsKZ461uqc/yY2uE+rawsEwz9C6SNspjnBJLbWj5jbYrHqsGJJ8i30EelLl2g+Rft86m9ChivEZ+szjAZToju36tefzLsVDY9dqub6LfILA/V7UMhpZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771816494; c=relaxed/simple;
	bh=IC2ujQYM1ODZUSI+9bjOzjVILB9/oe+Kb+Tpv8c2sYU=;
	h=To:Subject:From:Message-Id:Date; b=NMUCqm6tExo6+xsq/voxMMpZBRs8ktHAZ9qD7hDkI/OBCk/sElxZUl7r2dCjf9S/8ltI5X5fAJP4G4Riv9xN0BsJPBmuas+QQ17GlEKg05LXjIXHCnFWZdwccCJy5hmFSo2VzdI986Ayi50BD1I7WWtdoT8ucbmXe/6jCNVm3Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhaHq+jQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhaHq+jQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D12C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771816493;
	bh=IC2ujQYM1ODZUSI+9bjOzjVILB9/oe+Kb+Tpv8c2sYU=;
	h=To:Subject:From:Date:From;
	b=YhaHq+jQEcAlX5KNaSaJVpeLR4wak7GWkCqS5SGFiz1pjFooNh8qI0zmKC0rEh/jO
	 /MWBkBIf/3/FgGJpkXVW48Fc/Y4bVGnVRiVzYNDCaNMA+9QZ5+360zPXUiJW4hPDYB
	 6chMiN44+tsD+Xo3EMtxsP1Zkf3PFmGrKRE1QHVbnUWa1BDrX6jE8/KpX3ZuV331Eo
	 hI+IZ5JFRTtTYyvjgaNFOEEl9yMRRdcI2gMyVKtp0fep53glruXzYU0FKjw3JBZZlN
	 5LtZGMlkQpq15DNQaW6vxFNzuYqVdCLZ+6mnN2MOzqoknW//0UCLjsjZCS3c2582rI
	 A6ozkmccmBm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9680EE909BC
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181649358.32619.14033551557323069081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51292da32b5d30d2bc51ab8bbe55e43dcbb377598683f545e270c3b2f6a4a4cd
Date: Mon, 23 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771816493
