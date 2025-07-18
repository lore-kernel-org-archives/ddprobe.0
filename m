Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E741E7C2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752819594; cv=none; b=OYDHAHp5G3CPiQtgeEn49jdCEfk0Dg00Gn+fJUYVKAh119C2Aoh3ZcxzHhEjPmKH4SgRkG69uypniB//QuGoBDTMZ2hdk+P2UYrY4aIjINXHTy/on8Gh31MxJ0kjBmSZztqrmw/3RwvYLdxtjXhszNZXkeL6HL6CuVlzTTNNAYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752819594; c=relaxed/simple;
	bh=7wufLUrJzqacDt2u29Kg1HNfoHpnrrWe6xopwAviR/w=;
	h=To:Subject:From:Message-Id:Date; b=WBzFOwvPwmPkTPsIIg3kbhIAU6xLJB3jSe9Yod4YeYxVneicm+7VgCj600UoDtO4jzm/P4tilaD4+ng8fdr012IOV2gg8qhL/BJFyQVlZnO5/5fxqbpITjNstJ71PfOMMvdwdLQ/6SlTq74CJ3CIoqwF5SIDACUD1qB4uZdJ02c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pncZdqYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pncZdqYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43F5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752819593;
	bh=7wufLUrJzqacDt2u29Kg1HNfoHpnrrWe6xopwAviR/w=;
	h=To:Subject:From:Date:From;
	b=pncZdqYEWrK0VPSyAkffiitaY7W7cz0n/cNYzuFGSbr/6KzvkvjB4Z1kM1n5ryf1s
	 EMX8GZIYcNiwd7TpdbcDWWUGNAyyiuWn0WvfP2PjfXjXpTaC/zkE839H8YGn7QRyGZ
	 ZiQ3TmQyIPVUW7IUA4ew8KWM/iCPU1CuRcLxrbvKmDMjUK9mmPm7aXpUj96TrA3idE
	 msdV2Z4qk0Ex7zRO5a/AXy1DXwhjMDaqjPFTfUnB3AHkWWrWvD/i5EOE3KN3wI38TA
	 mlyyeJsFHMInnCa3a5d9MsZyAvTZtGA1KHv9q+ykowA9H9YrAxQPnUOyF6s1TBcDGQ
	 t/9JEo1A8r3Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180DC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281959358.29556.15907331735694942748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad666f060e404f428867acdf20a6bc33989ad418a96eb406934835aaafa6818
Date: Fri, 18 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752819593
