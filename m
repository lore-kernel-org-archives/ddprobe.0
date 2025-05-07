Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4DF1482F5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746644393; cv=none; b=EyMwZhXEK140TIeyLraKtKzGQIvKSzG6zAmMZRepkOzBZqqOPqyFkHRt9u1RLw9uSvEHQ2Ve1T4x1SCkPfLsLVF8x8tQG9YvASY4b/cBsnH7edcA/8se346ilBEFxePsCeIUaC1QMgjkRUn9Jp8HuFG3aVvOWXszKXgdPux0144=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746644393; c=relaxed/simple;
	bh=dQseZdhFBTImXkI3mW+hW9dOdEgjRqA9SjlHb/nc3gI=;
	h=To:Subject:From:Message-Id:Date; b=QbpihbF1HZ3FV0BEYExnHu+S5QTiE0DAVmfO16Jl8OYstl7tHd3otG7lffJxCDJEmNXI6y/cCgsEdjWUsO45Mxy53/AQExOJNeaQzj4iIjeoiUmCub0Qw62SmneOcrzTqVwwnrQQ7F7a4nNNURlZ7GmRgey6wJX7uqQTsZF+HvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/p3yXEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/p3yXEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFECC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746644393;
	bh=dQseZdhFBTImXkI3mW+hW9dOdEgjRqA9SjlHb/nc3gI=;
	h=To:Subject:From:Date:From;
	b=C/p3yXEPeNU/fOuyEkPZ/si4rRqzMDfuJoWZTluWgDyoNeXJKG7QVR+mg2SWK54bd
	 Qvy6XqfI9Tw6CMe5obkubsfTzfv83VIfctYkj6lTSG3lChYthLAyU7m1yZpl96JYli
	 r2IVi+Lxz+3ecp4o+3anWaI2GOIlhV5MMw1nUZ6+AB5qFOgV8P0wFsmoC46TpZ0wnW
	 cVLXDaZ57eyuwVVmbkuAG++p16ADVOFX1/P5WqWsDXMot4lEighxlfycKEFTBfvd0/
	 z+6tav92Mtb4Crxz3jVXG8qxRCVGjumjLdJLidG5C4toY+DfwG6GDVpjz2oRp8lElQ
	 UOooFZt9GBTJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2B7C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664439357.966.12627236872274975099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4296b0ffd330a07abc49d4b514af3981998da187d4e0cb98a3b7a1c5397dcc15
Date: Wed, 07 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746644393
