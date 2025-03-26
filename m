Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ACA171C9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742977195; cv=none; b=uNLnIsHjj3NbHkFyM4lejEoFUwDLVqO1tCZh6F/BkeNTKznmRfya7wmCRJKYfq1/4nCuPICeON8NM7s/fxOFXz+q2lm/bqyPVFFV3aSFyQx74bIt3DyNCudBoI03uP7zxc7lN9AY0yUqrTB72b5POw33Vkrsa/dOr2Rlq+iRKK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742977195; c=relaxed/simple;
	bh=QcvJdqOZ+mh4iqmqcm5lglVagPT33nBo3Kqakgvth9E=;
	h=To:Subject:From:Message-Id:Date; b=Izb/o33ocN4R1g6pJOGLvsi8cUKSJkfIW7ngA3RpixP5oKrN3UDkOBVXz0Lm+mlF4xuDny87JrqIX1Oqb5KceMhI+GocB0k0xv7sdroIEPoATrmU6bMFLLylOLWl++knMY2vPmUgKPjyZ7a/ac4siRZmfwP3F3utVDKxPM8EpTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOfmrqrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOfmrqrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF8AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742977193;
	bh=QcvJdqOZ+mh4iqmqcm5lglVagPT33nBo3Kqakgvth9E=;
	h=To:Subject:From:Date:From;
	b=JOfmrqrIiJiIXpJb8YsNG3hWlbrvYRMFDltTKhO1hPSgJ1UmaIJMCsaw+xVjCUUMo
	 lXvUcnVpjTHgqnQo/xLr5c1fJVXgtmX17ZErtMpNsAZIG89QbQ1Mik79svosxSGL80
	 H5jrQhatF/FWF1+IP35wHzeSM1+XfBtvCxFs2UfeBrKCRTXROqep41UDZ6eiCGZZF4
	 5BzQvKukZlDAQE/hjUO/UXtwYgzBGLc8sdiAuj8PqGZXbEJxghmn4/YtoBMH3Ld8f0
	 mVGDqFxRV4WVVEG7Z1TsxqTYZ1GmIkCaeHXbkGbUfLip/t/NfV5Qs8J9HTqIhm2gRe
	 tU8CFvFXJQuBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F7BC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297719359.1189.5494944736031804671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a109f63ac0d358a2ff8027ed80c7fe28ea15ca044106fc9ec2334bad776549
Date: Wed, 26 Mar 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742977193
