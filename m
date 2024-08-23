Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164BC469D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724411754; cv=none; b=fyAWOGG5x4JVyZHlvpBX3AbRYmgOR09LTgZoNc24mC3Ojp2/OApGsBvVU4io0LRdZDfYl1iEsa+sw1lGmT/Q85G/vRih2+PGdcDxjI652RCPh2f4mU0IMTp+7hfimELclTRe6ZCsQBEX/dLVje28Rh15WA0q59SB7uZ7Vf2+R8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724411754; c=relaxed/simple;
	bh=DWSGxB+kV+yKBblWWbNe2o6Wb74T5Rssvx9v1o4Ffqg=;
	h=To:Subject:From:Message-Id:Date; b=OIKIxkvJI1mxZsjyHyB5k0QJbAp2U6AC+U/sxojkhp6xTmUyQXpuTf8vZ+94Dq24MCRb+Q8NRJP67rmGKuP8KdJWIQsCzXaLa7Sw7nI0aHT+Rrykykyobm6GNQ9lh4DrW77Mq36Bz1PSwzyPAR8M2uCUD8xh9bq34mpJM+kJ2vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhDmR6WB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhDmR6WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EE5C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724411753;
	bh=DWSGxB+kV+yKBblWWbNe2o6Wb74T5Rssvx9v1o4Ffqg=;
	h=To:Subject:From:Date:From;
	b=lhDmR6WBImnyMkoKSaURzddp3gTjlLQzfhDIpfGtkwnvLRa+hEQ7tjNFOYrklJwuO
	 t78FMtDC7DjkAtLmBwxiRvRFss112GlS5GMJ/QV5QZwPfcEUU3AS9tG4lH44znlRJU
	 45bsR8Wi25jOdzT39eooScAuUPz9AYI7CXYpQ+EvmjZLgT6phg04wuRBA+AEV9yErO
	 Dj2Lary0F3FxAp2BnG/rh+fphLXiQy20nWyQS7qsm7Wv1VbbuGjXABSvwWkukDrg/U
	 TM2PKp1wz+rfBKHcZnZnfevk650eGHR8ODp0fve8vsUmreMTJxl5CGWGzEVEnu1YFW
	 Vhro4dI/y4ePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E49C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441175360.20637.10023385113723858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88dcd2ad10edcd7038537b4a421f643c9437f6d5306cbd4d25ce78f8912f97fa
Date: Fri, 23 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724411753
