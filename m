Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9053193062
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742767793; cv=none; b=RGx4tRGE6vPGhqsRgrHUajATt5k8p8i1V8+imk1WuKXNNQiHm6YaWZPOqbkvPXU2OubfFwvU6cPmXczVV2jNpkBz6nKezJDY/Ly8Fa8CoquZBb29R5vnxKNOGcBwsUiunq+j4fZmCzlrNCXOV2CvaGviB36KFcAUFIqB/o2CORk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742767793; c=relaxed/simple;
	bh=grqZ1mj3LnZ6ORYOwpWAUiZPeR4LZNP8uAKg1JaJgZc=;
	h=To:Subject:From:Message-Id:Date; b=AD3SfRUUQ3tVOyuAMT+Q0LTRosnGs4JBysKQgAklHUKbOXWRALF2YgmJYtXXdDW9Qw2BP4d6DUukoxIpr1OumjojisGR0y7v9FtOORnLXck/9/7bpmlhW8sXSkoB1cRKPcGlItgmYYjEKotiRBY6NWYPpOdwa5vDocKJpJ9Jqhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0gVOibI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0gVOibI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC87C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742767793;
	bh=grqZ1mj3LnZ6ORYOwpWAUiZPeR4LZNP8uAKg1JaJgZc=;
	h=To:Subject:From:Date:From;
	b=I0gVOibIFqp5lKXR8e0hpTvsYOyDxv3tLxXAks81qJXsjcjZh2tuxsPO/sKO2+DKk
	 mu6kRhf6WuT5iKbkpFDfSTBIbJJP4yZLa6y/FuEml76O3vk20l9Tw4MCDlZ12YsGj1
	 kXY1P5P9GTPj29dZX5nNbWcDJ+gRxOGvwoEWBTpJZToBf3KNub4oU8ad08sJkUX0JX
	 EnCL140z4Ciw4brXZYQab0GZjAnUirX3Fef5vfLcFJYYC2qzjiiGpEIwqYKigo30gw
	 OlWJAOm93UFT1dAivyJ9DbEn/ZVULE8xffnPwvcqHP3foalSsU/TWdaVM02zB5pOBD
	 Fsx6FwDFm7pWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979CEC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276779358.26585.9166379874925149663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be103212cc67b32fc8503e1097ab73b456e35794cf67295a660eb801e6d84051
Date: Sun, 23 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742767793
