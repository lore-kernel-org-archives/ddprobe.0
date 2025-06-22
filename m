Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572E57261C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750612794; cv=none; b=haari+fdR1nRxAKqmMq7iv7Azc3XCcYBBAwkap4dbQWjIgQKrBt8EvxKCrHkmJVSbkK5b7QQTQ8vipb0qwOI5eKHVW/HwaPb5jyvVLfyDAGSLdv3lW6TNXnlGYSWuZiYjX2XcdQLNZxZLKXbWBeETrYy9oY79hLFDRAIDO0mtr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750612794; c=relaxed/simple;
	bh=a4J+9g4oeYOfLQeeUsrQu1ZTdLzTfiacRNlhy8N/VQw=;
	h=To:Subject:From:Message-Id:Date; b=P4VeKMZTX0Y8WsrPcPCGaX9Ty++Luy3VF8SoiuYSe21Ytf5CmvVDLKhMURn2khQtpnzQ/m3hcW/pZSofMjE+HS/z8smH/wL2PS/YV1ljddYBMyCNrHBAGd/3WWgnqxSV5dAucDdKTTdeLNewse0C02zQlIYxSNPA906mCUA7rO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u46VVA+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u46VVA+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5471C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750612793;
	bh=a4J+9g4oeYOfLQeeUsrQu1ZTdLzTfiacRNlhy8N/VQw=;
	h=To:Subject:From:Date:From;
	b=u46VVA+QXaKQALUf6rJ9Lqj0Xb7lsMaw9cV8JMbK3WAQVKftYXrS6/hXvM8WedX8y
	 onEzvFXN9OFuZpsf9KBH21OW46mADG8Ci9ZpEBLJ6sNYQoTbkANKP4G73tuPdBYZGK
	 8jH2YaWVRgjHsa/lN6ALyc5rEjVVQUsboRLLSze7iziR/MMviFUZsXiCg9O8OEYKy+
	 f+ogumAxKrGZ67xzvQN0wCt+23uOz+I4hhpFzPDHc1+JcVZo9fFhx0eqB9xW8O3S7r
	 7QK9oq8c9JRDEuVFjVIU3JDamZA+3JykbT4ot682Rb/RUKZ1ytTXBqQxWCn4TqxapC
	 ehJHhc+3j7yLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D32C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061279364.13449.17055459673660055534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa37396cb35169995ef73fbb71ccae86ec9bee51c47f3361c0eb44b2a8219aeb
Date: Sun, 22 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750612793
