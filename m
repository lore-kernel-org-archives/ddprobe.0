Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1A98830
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719891923; cv=none; b=YLEV/DGtNlTLVGIFcm9kNtKATrhIGK6LrG5YzqSIGqduB3nyF6MLRo1EHKyZv7LGRGo07C6BLTZMMxFU7spSLoGp2HmdCsDbYpAiLiSPA4OSOJx5fYwnIws0zkaYWJd568KtakTEP3AnnM4GNM4A6ZDp0DM0haf2VDrMCsDKn4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719891923; c=relaxed/simple;
	bh=eFAGI0r1o5umacK6W6Id18cqzi9GpiwjwppgCO7OJ+I=;
	h=To:Subject:From:Message-Id:Date; b=umFWhhxfgaE3+B0u4WtAmPRfQuGV8ZOk4YG0uYm6sbffyPrSv9AA8+q/h1ekYe/+P5WfqChhFXKfYNZd9jI+vqUdP/+yhKa4hthNq3aeDA4q2T5Ckjti09mU+1OeWWP6Kb/0N+mk1N9m3VRAx1Z9K2wMb0VJ5Oa36WycM9W9elY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ds6fCVSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ds6fCVSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B9EC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719891922;
	bh=eFAGI0r1o5umacK6W6Id18cqzi9GpiwjwppgCO7OJ+I=;
	h=To:Subject:From:Date:From;
	b=Ds6fCVSwWivkbDaco+HLP7f9vbFtcHh7Tq0aTOJFURpiI0wjfIUVJU9cjb7HI27oD
	 bEoPr4lRp9UgHV9fwpOorgr/ONRVRiJ3/zaSFqX+wwDBvN2V09esjiSLxs8cUDpZ6P
	 CdQ/HGEQLCLGL2X7t8WR44JMeLjSi+0/6x4U4kdPgGGLxKzz/812MNjZvmW7JU69UZ
	 g34sQV4hoekmhiRnB1jz/N9WnkDfpgbNfu0J+EMQ2LpDpZMqKLOVnRPZ0LpZZMQS13
	 GhRYzKh4LwLm7Cf1q1ffHDM3CMAfpDgjbMUt8PPv61nXwyr50+FgVT010C0Q5KftZ/
	 C+L1HqjlAlR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34E5C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989192279.28282.6806180374033102175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffca4a83695286b10cc99c0126069437fe8f6658d7ce74f79b93e966711562bb
Date: Tue, 02 Jul 2024 03:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719891922
