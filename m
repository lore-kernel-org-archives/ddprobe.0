Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0335933B6C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768371835; cv=none; b=AgtRFm6hdZVNWsGx2I11okobCDRLfX5YVqakw76a2RHM6KrV8B6ucKyQbXYtOJTKzsATsDtzY984iYFx2FnVqQ3uuHHHaexLjGJvDatw3M3UNlWrtulTuPrvCXUmCoVQcm/YCTVPCLOQ+v3pDX2VkDYsusqqR4FSh7zPzho+tEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768371835; c=relaxed/simple;
	bh=NNSrswnv3eC6ZtU1hCNb+SHYoNOrUJxNIATF0vWo2Co=;
	h=To:Subject:From:Message-Id:Date; b=PfsP/AHnaNBjQ834leECvmf81tO/moSC5n3aNZc6kjMwx+2WCc9qg1WMJ+p4hKBKHVQPKB4xz+oR7T4JHbAf3KUwda2cSIfCBxX7FHQztDFYbMozwT2s3gd8mMpDye7LzW4o3LpN4pW09crKkG4eEuL4pE2xMsX8EKF7h9XZaUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry5Rwkx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry5Rwkx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F917C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768371833;
	bh=NNSrswnv3eC6ZtU1hCNb+SHYoNOrUJxNIATF0vWo2Co=;
	h=To:Subject:From:Date:From;
	b=ry5Rwkx/JLC3uCOQKPKSFh99PvQavHXMqR83AImqE9a5Nl/lDSsjUS+B8E7ppMAHK
	 4M8PYSmEYfi8n5XDTJq+jcWZ7ktlM0rUC/yBuYlc6P3dpOTRV0WZoGp4CPcOSjqpmk
	 p5TygnW1ye0BLCdVFb6TT2JwYMLie+JlPZbYqH/kv/YQPORn87F0k27HoDnPog2A7K
	 GpXVtQ0AjDhT4pP61wwtsQgqbB0piuOEnMuvyepFSwOa237b+tOBUJw1Fj7VHGRqkh
	 7TMDNBGyq2z3x8zFG/4dPj1PvDEvJubKbnkcfq+Zj/vB/b0kcetqZb0yEEaK9lvB2d
	 AP96zPMIGqrKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA3D31A0E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837183357.25337.12572418482469185948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f038e73a52812724645013429325bec4b4e014465c35760bf4be9037a2f253d2
Date: Wed, 14 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768371833
