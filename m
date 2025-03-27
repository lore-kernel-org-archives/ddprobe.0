Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561EB18C03D
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743057594; cv=none; b=s5Vsg/M8vqOhSyaBh2U7QYJQWc7Kfz+Mwgg0XdbWtRY1oB8y0uiHwndZrKVTLJzwE7bF4K+ZRs+S0NjRnU1NTweqx5mvt9eN9QsA+fAEOOYSt1uYPIBm5REgNY7JG7PRU2ET8SZWQ8r+ougU2yqMTsuSxsab4nUQEDuNyYQeyz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743057594; c=relaxed/simple;
	bh=cKXqh0+Cv1jEBu421PbfubYwnpiLuxwvyoOhKDlyRWs=;
	h=To:Subject:From:Message-Id:Date; b=m5sINjvb1hlNPv3qOJvZxvm7+oMibCMwNP4GQIhPv7weZk3dFNGnpFjqQqH9Pf4qSVzEPan6UAgic/4a7szKdl/ernIT8VR38lmvL8vUfGJPKPmAJETnhe1SBEPvELpxyGBHzD0zguVOm2wo7jZclYHiAvqDJtys28FhS/TyN9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uelV6jA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uelV6jA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F76C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743057593;
	bh=cKXqh0+Cv1jEBu421PbfubYwnpiLuxwvyoOhKDlyRWs=;
	h=To:Subject:From:Date:From;
	b=uelV6jA/L+Chmdkyjf1jVvCWV5767pAeLksJuH68Ga3MD0OoLBFw68rJOHpDGM8c4
	 bFrfI2atkGBmkA74Uqfh3vJq2XtO77qHcNvJUGtV7MJeGff7jT3azJnJLRJQ/dneaB
	 /6/Y1lOEjWWgOJVrIfQA4RoJprrhkUc//sKybzc/6JaUQf2WYybZXJLNN6JbhztmqD
	 i5ZeO/2JeYh5WqoGxkMjL8RFzg9RUw5HyFkXQ7xsjNhwlQIpe87EBpRBS0QuEMEcY8
	 IaaPC9d98+EgPuZv1PuyKMD0FdEkTSx1oopZv53E2ug6/0v9UOL2FE3yphY7FvyCRr
	 xATQhwIT5/lSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D52C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305759364.541.912093392957227667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e3ff250445949b14b06666a398bb735fa757a8725343690087f536c416b0bd
Date: Thu, 27 Mar 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743057593
