Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246701A2C06
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752674394; cv=none; b=dBN09Uc3iKleVNRXgOZH7JS6TO/+losbNvsVlhOBYWRdCitgHMUlw9eoyITVmhPwHmttpLJT+XiC0d7KRQOrptAyQKD9e8g7LvI/T/fVVH0uchFff6RBqVrJTt0Q9OExQFfdtBXgIf4Mg9eCmhuQ0zhJbgN5QNZAW9Djjl71beM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752674394; c=relaxed/simple;
	bh=Ui/MZmmfoijUJEL5Ga5XGQ97eX/u4k+4WTBa/78nJpk=;
	h=To:Subject:From:Message-Id:Date; b=AEVcN49KYBbms0Jx1RYrDMJcYqMXmmqVy8qBiMI5pNarxxJWT4BuXXQ9Py41Csa22jFKXWkDDwnI8K/QapFe7mYy23Flsfw43xrtFzd/WOrL9r06QnsSJ4CJD9hi5WdhKZ21rCUiVIhL+3Jfb6bX85zuHKmXubHbG5LBR0mjgOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1BvGxYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1BvGxYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07A1C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752674393;
	bh=Ui/MZmmfoijUJEL5Ga5XGQ97eX/u4k+4WTBa/78nJpk=;
	h=To:Subject:From:Date:From;
	b=F1BvGxYAdqJbuty0jP2YshBAw27OjxXTXnf9jGEI6jDB/4JePXgFfoCHGq3qXIC3n
	 4sfazofK4Vdys75gR6aA8ItzOu2+T4Nanog7qkXn5z9d0hOT6eoUw5hjq6K4BRszgA
	 Ft9Heel+PFnvX57L1aatV4BOBj6TseDv/ea40CgSqPrPGfVBRVEnh/Vv7T1LKlRGx7
	 7Cs84Fv2eZY0m1vpdt0yrHciFTynYU0qRzpIQ2RpShilHSXPWc1TLaHnSU2xug3mdl
	 q6GxIUbOfvyDaAmEUdxUNmAP2k0Dr5+jEKmQpXostYalBd5MZT5SVnE3AtOKuEQZI/
	 VXr52Ju7iD11Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910DEC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267439358.9093.8480232071207748494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880922cdf9376c88dade1c4c085e0bbf405aa98c6f325ecc977c0f452e1bd69b
Date: Wed, 16 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752674393
