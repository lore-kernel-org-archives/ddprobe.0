Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2252339FCE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774738494; cv=none; b=ii1710+pIvHq76PjNZZ1yu+S+VaYPHDDT35DgYQcPlsAeJKBnTjcb6jJJ9B4SEDx2Yhn9BVGeVb0O5kdZaHu0vmx/5ZpmK9OqfXsweURWRy58IjQJ9Qoii0sRVRl5BRUhj0psjg4LFpSGe14QiQ0DmGVLkokiEJQO61jEuW8/Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774738494; c=relaxed/simple;
	bh=dTKMA54VmCKDoIxlv6CGkld5l+74MCd/R06X3mT2sik=;
	h=To:Subject:From:Message-Id:Date; b=WwZnpHDMazsNsokPTt/oP6+G9uYeuqq5D+T6D5NfFyarQQx0FLTHKV2Vr3gY9DLe/Z4MJP2ouQTiEn31o9sPYhusEMVh3PubdVZN9M7onxtc0vntWlCLJ4XU/YQIjbHI3yRjEyxH4EJ682ZMWEEShZ8gXlhP2FaPd5KTyJEoF3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAARwoGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAARwoGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9501C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774738493;
	bh=dTKMA54VmCKDoIxlv6CGkld5l+74MCd/R06X3mT2sik=;
	h=To:Subject:From:Date:From;
	b=XAARwoGT5fK3i/NuNUt1RYh6Nu0HlmSd5CvgBvHNI25lPJs+PrqZpEfDazgs7l5k7
	 9H5KJa4W5wtPc13f+Co7SbFrJLg46lI3/U6TtgJAFOcaEzpG0XSnLyJp/paYIS+zGn
	 SL7hZg3wG1fHlXPvnVsoQFTyFuvu+elXvnrBO4wKs2blYnkNQFmsAx2JjMWOdcc3Ph
	 ORjNWo7nKnEBahnYGcOM4b27/mN8efkhEWhXmBV3DafdiR9DOpSb/FzwJIhTnVEAii
	 AKKWQqEM/UmdrZYPSbTEj6MXkMmWl2sMohhIotHLMPBi1znFyVj0z51GdbZLVEQNc0
	 k3UNNJDy2f16A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967DC10D1489
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473849358.27612.10519815247859712662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646aff1513510ccb27fcf52351c116e1f194ae04df4fe9e8b3e17745cfa7202e
Date: Sat, 28 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774738493
