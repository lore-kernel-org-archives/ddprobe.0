Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F97F35280
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754842794; cv=none; b=Qthrua+MRj2jz5RU+IwPV4RnyBACDt5jAwyC/5h3SdtBlld9tZolTFcLnrVJzrj+Swg0s+14uwUaOb5ZAzVyJWoi2izfgmjcLhkZLsvao2UC3BRkLpJ2uh+WSGrR0G5BXwlQOUjUSRu+3wKCZc2CG/mC2j7NUmDWzg8k92apoG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754842794; c=relaxed/simple;
	bh=NWUHO752hSI6f9/vJeNG+ISaPewFWnCt8TVX0Oun3/U=;
	h=To:Subject:From:Message-Id:Date; b=rb4F6wYmA1MqrE3LM8J33h5hva50+5KdgdRkM1Dqu9dsxloCH7FqPvnZGnTNJBDHZoeUIGNG5EwcrU0iBP5jQP2uOPB6MBhpTLBIGBjCCJcDlmnC9DM+8Uu6j60776wMw1fJsCUmhzDLPGMxQcvQCf0PbFQoVqUnCVBXWhih8PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZI3byf3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZI3byf3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D85C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754842793;
	bh=NWUHO752hSI6f9/vJeNG+ISaPewFWnCt8TVX0Oun3/U=;
	h=To:Subject:From:Date:From;
	b=ZI3byf3RAFCWLJkFfhVLenK4nRxZOqCcxM0a9BeDL990nrp57Uv2spDxZSbhLOvZm
	 5Cyv3Yu+2ZxePpnECcQFdLf+6XFNVUaEgKvpB7VXqoOtICDGquiLJOQAQp7A9cs3y1
	 ye15qnmsdSigvaJH16ZonIHw2NQRNqQ7ZNCOBS9pg9N/zoWABq/gamtf0mzlZ5IL/1
	 UkXpHjZZkkG53WBWD/wMjMpIkhUfldtKNTXCqHPKVIvo6HuHG8K2VslsKzcVHr7O7H
	 Yg01wCs7y9NX5krG1Kixbh3J6D571wQp6g/c4Sfpxa/1DBwYHomUZMliWP+bWrN/tR
	 6WjuyaqJg25+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFEC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484279357.3014.13439885936348967869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e44dc4e1a49eb1667bb5f2a4f399b237e0c774eaba7f5f74c96b1d55850260d
Date: Sun, 10 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754842793
