Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5526B1ADC86
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739995134; cv=none; b=cHHyxg/vsIJPFMqyoMkshq/jDy7peSW8DHoC/xH44NFqpySi1r5mlJt5i/04ADdxiNkQE4/h4JChbppZhB00DiVZhLFylsgAZTQP5i+yQAzyEUozXXgvZROTApAurcvvwWY9j3mTS9BtxoJf8f6jGxvBXMku7qKmwkWWq+fzKyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739995134; c=relaxed/simple;
	bh=vOr7gGL1xEgRTrKbDIY6/B7sakbPVFiXITIkVcvMHwA=;
	h=To:Subject:From:Message-Id:Date; b=seVLYrun6yQ5BZAkK7ywElwzGMzk3k1srqzCuSHHwDZzSaK2uzTBL6uIjz30xFdUoTkb2uNO0auClRAh7GpuuwuUguyYEuB5wGFjZ4yIY96pRQakg0UcZODFuTR+Se0c7vSfaD2eaV7ZDkpxrN7dH7YFYM4FOOqjtUxCJp82sRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKuQF35p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKuQF35p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B177BC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739995133;
	bh=vOr7gGL1xEgRTrKbDIY6/B7sakbPVFiXITIkVcvMHwA=;
	h=To:Subject:From:Date:From;
	b=jKuQF35plYBN3vGaA7MeWXyQF9VZ9xqJvznQdv8HLawyMzV+0EcHKCqTwrbCzHf4d
	 lyejrYbh/5HxXQSXm/kiz0f4yMIKYQEgwxNr5TNUOpektxzxe3vzRcRCujbb0kpCZi
	 CHGtoC0Dfq8bT723PVdngEaE5UcH6Ln+AA2RLxa/ojlXKZzgXqEpD4IKXcVr6iErXP
	 O4g026w6xkqH/LQs8+fDpo39mgxsWLBJ9mUvtxMN2Jb662xzExe71lE9ODkj6kA+Ov
	 TOAJH07ry97UuI9DIHtU3nmnuISY8JitrJoqyN02S2zqnbGX/y6jNRx17BsAdN6GfD
	 2VqBEt1KUzu+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C10BC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173999513363.25835.3101870028707700856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0644f48a2cc7b19179bbfd14a483ef68315e6c52558bf9598e82effb40b0d52e
Date: Wed, 19 Feb 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739995133
