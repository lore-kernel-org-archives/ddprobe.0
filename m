Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4F642050
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778341654; cv=none; b=eihV0KT9ukfQRB18tjiIz5OhDhVvtKz/PF8B1PSuBVFwU4jv9JoPBnVhw+RGv6XPeLPEessugOzXJZ3nnDAfUjTWjcMQeI22q3GUhuTw6tPU1A/XVLlg63KufM7ODTiX/EBTcx8O86RtAwq2NLom5//u81u5RUoAWBbBctQj4lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778341654; c=relaxed/simple;
	bh=YsQ4OAAxKIiaypZadhPUId2zJnFZjwcis0+3wgMEeCM=;
	h=To:Subject:From:Message-Id:Date; b=O/W8msxe7Ii8iwvz/kl+e+ooFKzccP6HAecnq6iywpPhNQblaJ9Um3rSOV7TtKPpFvDFtoVQQQDEYqM5YtEPAX/UhIhs7fFFr+8svanM4iSHJP/CQA7PWtW1bQuvfQ1pce3Ll0WdT0oMUdgtGGUBumZ8+l/WTAtH4HpSTMRcX2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjktTJ1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjktTJ1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10A65C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778341654;
	bh=YsQ4OAAxKIiaypZadhPUId2zJnFZjwcis0+3wgMEeCM=;
	h=To:Subject:From:Date:From;
	b=MjktTJ1KItbBF1cviWBJiX+PQaFXm67dptULVgI31d5zkJXwfTeFcs6AoTohp5kBr
	 r0WfDQ5WK7tyw7AJQJ6AXvph/RWUydqRhJkb5tSwj6fBA4A66qYSMAuEgg2zm7y8hQ
	 X2G1xRRyFzuhbAmOOC4UPBP7JQDo8TMuwr8/4gBo0jv3gnx3V57KIbbod/SqUtyxBN
	 CS7+3+voYean9EV9/olv+UvIjijTQcUx40YSaOLtaYW+PTO+viviYLXuiyH8GZEy5m
	 dOBwhm+vkDRrpvBzTJEa9c/yCF96P3INZi+JT3H44ihDh0P4w0PVOI8txKCjkK/YZG
	 40AsWWkHX/IaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7ABCCD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834165378.16120.10240762504601309676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3b1a022565d1b538487b7c1f0f962f0b348c669b16a509e088003b3e5b26be
Date: Sat, 09 May 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778341653
