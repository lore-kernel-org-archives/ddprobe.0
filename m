Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF77439914
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785418834; cv=none; b=QrwrM9Y5SxHIijRyuEQNNbAta2zL5zpcDO68tP1JvVFMn8TufId4GWNQRNMcJ9h7vr90AxGmmpW7LDujgdrRHwq73Lt4a5UVA8IMZq/ttmNJGNpqyFZJjhEVZNFtwJ0WxQAPgjTt7xPNBoQDhC7Hkb4BwFfwWbpLO90zFsU5wRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785418834; c=relaxed/simple;
	bh=2qXm/WkDqK4BulIJe1aM9WkvIvvwvkR05KKww1Azv4c=;
	h=To:Subject:From:Message-Id:Date; b=lCoTt4J4vxIJ5J6w+jzxPHeZL7gTF8OJGHRmPYxtTGaDRRxGmpkxfFKLo8SbxF5h/gN8cONgn5kOtMoXygG5b+bNzYqpHKNXJ85VpwgSEqocDiHX9ibqaZrJb+hHAvBEcLsdffFVMkd2pZN/Vw0tKzYTitiuu5P/NcyGRJUTsLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2azxJ/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2azxJ/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F97C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785418833;
	bh=2qXm/WkDqK4BulIJe1aM9WkvIvvwvkR05KKww1Azv4c=;
	h=To:Subject:From:Date:From;
	b=V2azxJ/p24zQ8+Jc4+T9NXcRK6rXnMdmEOXXq1IpHjBjLMorY2C4MJsz8yUJsGUe8
	 7nnvrFPPJtqYoGG9idboU4pU9z2YGADBdakLxkRwhsHNzioYCsY61flDq4ent9zo5n
	 GRJyFuDP+hX64alFi4ukxxbhRar2ZduW/lYRjZrd6hS65VuoLl+9ki0qgdD7u6BVgl
	 Am769jgwXpdbfQS7UsfRRdcHxROepZssHPgb7i8sXSrbj/N+MAuNovQUYSl8zAlahU
	 3tcXtRFuZOP9I34X1LORngwpUL5t37SQUo1ARjuUHtzFcUI/LlO3nv5HYDP7tyz/bn
	 1FNGFLIjmOaRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A09C55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541883373.14284.9683797307415807915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2b58d81cc729d734cf384c7ec3a5ae980fc2c2f39d5393618bd2958de19363
Date: Thu, 30 Jul 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785418833
