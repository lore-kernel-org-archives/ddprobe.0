Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1712F332ECB
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778136454; cv=none; b=e8iYeLLcP4OIQzR6Ezm6Bk7rDzOs7PxxOUo6fj1Z4+JCIvMEqPQld9OyKMK2DeqbuivXLc3HaWDvNWe7KdNUHylXVBBu9tb01ojbdRBMo/O1L2mHYgtRl+yKS3x90xqx24mqHOBBA/Rf+4CfZC8+qj4W4sk9imHfYyW9YfbRXgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778136454; c=relaxed/simple;
	bh=hwnzM2QbAB7rVUQvXYKU1fQ0JMMC2vWK7ZX6El0bEF8=;
	h=To:Subject:From:Message-Id:Date; b=XETRHZupvK9q80w769pzedus9a9jLtEVrZwbBcUB98JzKIBoLRj6T0aMaxzdpOTyn/bz4eZ4zMM96k0Ih+Lx3yvAYmwWOLQZioaWIrK5+1Cyip9v9XgLIaF/Q22rVRzLeqgU8RN04FC052Fk9jM56VLUywOcxgwl1vhBonIbT7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPda7Ji2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPda7Ji2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB737C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778136453;
	bh=hwnzM2QbAB7rVUQvXYKU1fQ0JMMC2vWK7ZX6El0bEF8=;
	h=To:Subject:From:Date:From;
	b=bPda7Ji2m2ODW9TTJ25r+l6q+uyZLrXS+P/q66W2DtnbAiMkkEWK4ff0wyN9Q+uhJ
	 tpHNnoacFyfBDkfgiSiIY0wa4toevUrMQRrQr1gJRkl9Zd2jTHE/UQWkB6VuqPLohz
	 YjDsk7i9Xe9Ch40r7b0PNBwqDtWB2rJbu3suxfrlKAS5kCU+tpMxA6ynHwFUrqWfEL
	 3xjgso19PcDqxpBmCcsxQl1yF8BPyICdDq4apjkSBtf1mub/cKg+7FHWH1i7zSgePl
	 zzZePnGyQm+9Km6daLrB5B6ryV0NtdnvOZz0bEOs/7LyUmSHfmvdIh+JFn6t2g4ARJ
	 wESgUwiUNQR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F3CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813645369.16217.11803819123930450972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cd8db036c4e449f76a5ccf00acce9152a628899823974d27fc3fc48cb0376a
Date: Thu, 07 May 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778136453
