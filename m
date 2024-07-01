Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F332AD05
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719818063; cv=none; b=aNk8yIowsIkNRZIb95BipjLBVYWSmcpNwcgriovvbZ76eIzzrRPfbKYLb61zt8uFr5PjP1WZPxKBw+vLMku/U0W8fVbPItjpHnJsA4XxNaB1m2EexW8Wi0sneD48MsxsQYP6YECPC8IvGbUNOk/bXZaDIQHbCHxMapvA/ntPxbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719818063; c=relaxed/simple;
	bh=q+FPXI9fXxzLXuTfNiTXnuh7MRJTN7CHlNfTfZKByOw=;
	h=To:Subject:From:Message-Id:Date; b=mPh69bIQUafrZP+IZFiEaVHupNvnvOKa4D5qKhrR2Gnd0BDZkbcuRrsljeVUzEIcp+dFUh1tFxsmquJVk6EwRWB8zGYXXJzwq5Twn2GuTHGOQvluPg0T2JFWwVtQTtRwd6MLtlIhwS8Lm3aiYOqg49jzHm6jpfO1N1smJTFS0Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmjOKC+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmjOKC+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DEBC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719818062;
	bh=q+FPXI9fXxzLXuTfNiTXnuh7MRJTN7CHlNfTfZKByOw=;
	h=To:Subject:From:Date:From;
	b=tmjOKC+fCPPi4zYDO4jwp+uMphWDHLKuEXxeX81GI+SCXlFXsTGQzZtLH6xyBaYw6
	 +pASu8uYaQa2nRj3QDi0lckxo3KND0846TvaJW8utOY/J0Mll9FPn7AryAsbrAOjeD
	 v16boq+TFCDdeEBOrUONv1qRV08EyBlIax/moNxBwob8S8si3RBdBi6pJllcEA/NhH
	 m/kDySQPEowKb2DCJzFo1YGT1F0bn08kS3tWiEFcXR17Kiv/hSjaZ2FUXSRK5JwjQB
	 lc35ijMxz6m87xY3R7aG5KRP5Axj+x2pQq1XTB0ouWGUpfkQWwr/CAiiHGvfQ5lzYm
	 lXOoKfKabEF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDC7C3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981806276.12229.6153342889540372610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db55fc2e4b25fa9a7a749653560819c68908a056671ce80a8cf9843f40e653ea
Date: Mon, 01 Jul 2024 07:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719818062
