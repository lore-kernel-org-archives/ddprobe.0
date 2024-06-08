Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58ED87F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717806443; cv=none; b=kQZSrS0Yoh8U0pxnDNz/LtbMjQ4l8Q6jwWc9pZDCgSbkPuZSGv1tEMdVKAnFz1MMVyjWDhb9K1rPIbmDCQELPMw2LBm1NqddxE+gRGm0dYd48BXs0Kv6cvl/qLswGl/OtUDdiRRM6G3uQiTE7qpEb3RR09oHuEf8b5Q6XAxuQAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717806443; c=relaxed/simple;
	bh=sRIHqsHLu660Pfaczv2n+sUZUW90naIBhBDmvNyn94w=;
	h=To:Subject:From:Message-Id:Date; b=GMStQNAOKOcqPCGJ/lJznmC/AKpprTd321aJJF5I1CO8fNh9slqPmwE5XNUFJLGhHHk6MLB1W4hzieryz+C/9WB4DhvpfagdFezgpJxf0geFjEzAIXZWqp5hYGyLe+qv/IX3NDXomsO8r7WHi9apWCSF+LdvD9EnBwherh1YMtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo/ZM+Vr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo/ZM+Vr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FC2C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717806442;
	bh=sRIHqsHLu660Pfaczv2n+sUZUW90naIBhBDmvNyn94w=;
	h=To:Subject:From:Date:From;
	b=qo/ZM+VrH1rHtmp0cdDiRx4AUSo5U0NpWHKgxNsUfjJpqPqEzCeDx1gwrW/evzb6F
	 cnmtypGgS1WBmXsoHm5ShlWA1bZhS1xbV8fEpyOs4hflhKehtBCrRFVkTBNquWqi4l
	 kL9YJ9hNptJHebbDcuCIBgbDzpCI53gbmViz5KuHFCQhLgDZ0YtPFcRULcP/v+kkoo
	 8MxKYxuxptzlcv/DWeJRM5uDHWjU0Q1znqPmuELloqXogPcZWy2r/ROBYNxeclERl6
	 VGn5KQNkrXnnp3pEtrOl8x5m6ZNh9rlmY8mFDBhyLCLmX7RpXiQnpIQmQ+nFoJDJx+
	 N82DDCsFHeH7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C164BC27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780644278.18064.172505008140758357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e0d580709aef58f577f28a5ee485a616de69636bd1d7cc77cc816636204eaa
Date: Sat, 08 Jun 2024 00:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717806442
