Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260061AAA1C
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759915194; cv=none; b=F36vGopQg2t0jGHcDUz7qyHHrvFM86Aef8hzOoYP0khlQVkCg/00sY1DY7ilrZurTbR0EYPfFU7JIUqh6lOEzwO+Fh7M9bWozoKhZ6TmvT942Xc3Nce+2JMBZ6SJfWXFpD4+IccIgFn1bp7uMgoxqs/GAthCgtLz3l32B+2HUFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759915194; c=relaxed/simple;
	bh=Y1JUY1WbR6Hp5/r24jU/iUVMgRiGj9jCD5kTeZ4J3yo=;
	h=To:Subject:From:Message-Id:Date; b=baR9ejY6J8LGQ46KxiMCwjCy3AUcqagioFHJCfv8OSZSsaAYhmgHiVsHGPXdzW07fSgt7RMKSUJzzuqh44+zE5Y4s+Qj7lFM9fjkNeLbYIQGuuY9NnNIMbotEcH5TPt99E7rlJiQaN0pgkFJ/MxrW7APB14YE/ZnlQUXp6aN/Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4V2n6V6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4V2n6V6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A909AC4CEFE
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759915193;
	bh=Y1JUY1WbR6Hp5/r24jU/iUVMgRiGj9jCD5kTeZ4J3yo=;
	h=To:Subject:From:Date:From;
	b=d4V2n6V6QpmF2WHYpiKbpftlh5/CBDYXrQFKS3MXOUrktSAes9h/pYgED2Ugyu2MM
	 /MKGVV7BDJEdKr3YIPQqmPbHxZZKuM1WQqf+Hm4W4vlK3ltexOXG55VHEBPTLoPfNR
	 kNC7TjBISOUPo33HGXnp7HdFUArB+xiHk/DRq7PRrqNOVOZxASxEKSudVjEZNXNy90
	 +kc5oO/dmK3X2NSDYCIb/UrJ7aFiWzPfyq5MQfqmxxDRF5dX+AZJ9FDZbR2npBBa3G
	 OsLl/GxLugJagOY+sXP/wfxx4qhq4tslQZMG88ZEYaY0uw/PSO3xh7ga3dMpBqjOjL
	 XgN+hCSpQqNdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984BECCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991519361.9444.19890615234139000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c76ee05785130689d94208cabb0ddf39a1975ddf2af6785657dbd0a8752abd4
Date: Wed, 08 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759915193
