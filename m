Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5701D7E41
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777782454; cv=none; b=stnTZiNknuMIeesAptWNtZ+TF8I7KtSSZdPxGYCbVeHpM810ZK+vC+AH0H/sRjPYqYvuODAl05oCiBtnzvmutcmc7kv1MC50K1O+PNK9rdphuU3hKpIcScVAz00xvpv8PBjwhSfrdbxcYuRjH6ueGuczz/ofBLj7sYz0TD/Hb/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777782454; c=relaxed/simple;
	bh=Vpr4gwButrW2wHf/e8uFXFVWEMn3jGZiOvc+JJh+er0=;
	h=To:Subject:From:Message-Id:Date; b=h2ma3QdZKGsP2upiSSPMgwYXrzUHTIh2OrHCZewLM2AbBzXlqhocQwRpeCj5E4ms9p7a+iw9qBsxFpUoGmkV7LICj98Kgd9XOb8CsFkJXAoAIwoFVYbnFghY269P7ZfmhxmVnyIPZvDb9jUIa1S/YsS6ukNXase3ne8iD9B0K10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoI7xy6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoI7xy6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C201FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777782453;
	bh=Vpr4gwButrW2wHf/e8uFXFVWEMn3jGZiOvc+JJh+er0=;
	h=To:Subject:From:Date:From;
	b=BoI7xy6vLpq/oImFK5vi2D4YcFPdRloV+sxTCSMtbn/KXw7DuOnTmGTMHKNUDYjyT
	 SuedN7qiF4Y3+myNzhzm8gm+5Tl/VHYJF9f6BycjiUCp2XV2jBIZ7Nc8z7Jbj8eJLQ
	 WdthVM44315HXIPd9x7tQNkmzWxVXBWwGjYWJfOYxNMQPZJ88Skh/rG3304qkzIqg+
	 vAMu5mFqIGcA/t3iUxSFAw0lvU+rO8OJr/dg8eKcIH7ybbPULkd6N3N1whNPR8n57K
	 gSjUbiin0z00ryj/qBeGuK4Ag+9p+w2zsgl/CYXYAkXP3p1LImwLLKWmz+wqNWs4aZ
	 tKQaXByHT0Vng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEA8FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778245368.2600.979619879908617460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a729dae8508370371c17d273e418bc3c226a2d76b70af4a6a39832bb0bc26e7c
Date: Sun, 03 May 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777782453
