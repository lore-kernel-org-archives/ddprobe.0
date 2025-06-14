Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B63F6EB79
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749895194; cv=none; b=tj97oPHRXOAEUJgKFbrxBRq8Fu5QlcTeEd3pLPFSm2AcAgZM4hQkSsFpMqVwgNnGGQRVk2OHR+lk6gqCmN4AiABJ7O60ZFfDZIaAg2b6mUoQB32y/rtT/2OG1VomOrj/FjHPYL8hJROoaH/BB64aFHqIQbLOEGZ6O/rQEAD1+YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749895194; c=relaxed/simple;
	bh=Q6O9D/iRFRyQxBygmg5OMcT6poMOBtXvH8XbhIt8PFM=;
	h=To:Subject:From:Message-Id:Date; b=ZuaAaH00TnZKyFFg77UQ0CrXzRXcpN9yFfGX+fuF1qnKAWVNOrYbxRyg1k4fMyBsVL4YtZHgUaIEjX363V0/1uhqZbx41wVlBj36cj3MQu9rD0ujNZ8VHL5TqChg+cnFNHzqrQnIdozqv2It9vRVdfrMEpFo33W73kNhI6hLKFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqWQFuQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqWQFuQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83F2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749895193;
	bh=Q6O9D/iRFRyQxBygmg5OMcT6poMOBtXvH8XbhIt8PFM=;
	h=To:Subject:From:Date:From;
	b=dqWQFuQZ+iloagIYAUz8zMmNenyMJVLPepO0faduq5j2rHlLTdA19MbX01N6km546
	 nhWv8Y1Z5rGHypzFh++1+P19CpIFm2eEoAvOeIEBlgClqWG9htUU6rLo6Bbsy8T1Gc
	 FjxjWmCdUKYjmiEDpFq3x/gcTiPzcjtLwFvivxrBRLO6Jh/7V+Hl7joLTA9JXNnShP
	 RFVQN2ZOmo029x6E10rKvbO91fgeRRHwEMUwIracXxPDJn0beJAGCmdY7tmpH4gj5p
	 frfsfjmONE3ljpllsn3wSc0bvL7NlwEYG6uJDzFxjOqd4mNj1zjfx2n97EuzsDH9Fv
	 mmdjpGIyLaaFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D1CC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989519359.27787.10877470180842116765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a41171118551521ac5fc06e1c761ce97188511b5022b5ea0aeeca60db91f14
Date: Sat, 14 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749895193
