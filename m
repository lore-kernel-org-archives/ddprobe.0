Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEE0189BBB
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736450754; cv=none; b=APGbGoNwl1CurNMbz6FAiFE3jZ2/ENNmgTeNnj7tddYxDDMKOHwgvWXjGpj7d10ehiw4qGWscQKQjszxhy0GBZCqHgO6BOAXezrTUJn3b5Y+gpIi8P/a2DhYn7mqEJgh0NmwVFBAgPIRx+S7N5mGDDHBv9IQYt+Jfaj5QHZEQSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736450754; c=relaxed/simple;
	bh=4AH5+Aumn/ow4JjyhzjtXUZ6XQ+B0XWctwBEz2n5De0=;
	h=To:Subject:From:Message-Id:Date; b=POu6YAgHZbpKvPRTLzzApj9YAcV0bv7nIicbk0XMssXKwgB1SrSC6IpVr0TOkyUF8A5g13U6GJ1r7FGg7af8eFtseVTKDpndE3QEGzg1bo6ajSzATSf3GBCAPTGyJ0ZVOXs3ID1oK/KZBUZq6SXdD4o7r7ULPeGA0xGM5r3hoE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQfZUrG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQfZUrG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF70C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736450753;
	bh=4AH5+Aumn/ow4JjyhzjtXUZ6XQ+B0XWctwBEz2n5De0=;
	h=To:Subject:From:Date:From;
	b=rQfZUrG8oDMpAIOxgFyNqpq+28AMuRgrwWcz1VNkYeICrmuJJ1GmXnJsFSJRnbNtC
	 C07FZAlpES31d8T/0wtALHutuNmPeUMd6MMPpDgDizUwBArhtv3hzB4l1mSsRVeLwc
	 PCZYn5860UuqPLtPLMgIj+/0286HGt9vNCQ3RuRbhzTxThd7cN4jfSzpiCRAll5ppr
	 B9UGl5eOAP2W+OxPgbClZ6SqrMsFjE8SHG+fGcLRh6ZaFA02u/NWIZxKhmKKB5DcCz
	 Y+OoIGEX8oLVvKzVHomD/gSJs5ho7pnvpb2BE0jbN/2kazmOtcArd6K2CFOLyVCgTW
	 AiWjZOd1X35uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C4E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645075358.26093.4920281766425712574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca07773f447a5cda9c82afa3a367a767d9e528da7607d18f1c3e7a10c46b0506
Date: Thu, 09 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736450753
