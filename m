Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B101847
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720918823; cv=none; b=kMEtnvCpCds16IovQ/q7/+Ee268q/aztuZumBs6WiuCMQfKdne6cFOyBvTTJt9k7Fteutxntv/d0jTUkBbBOMVnXKQCmvLNstfCDxnVpRcv9s6NX/DfFQIgdE7rFngjBrvg2dqBNCCH6ut/RTQNSfOTHom6gau7C1aD9Tn4mh6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720918823; c=relaxed/simple;
	bh=M0j+sNa1lLrTD1MtpL7bR8hDkMPav2n/500dvsvXNgs=;
	h=To:Subject:From:Message-Id:Date; b=IgcEJwFlIkOgB8fVFpD+pAeZxsZKl8n0MGCVybFo5Rp9naHoW8NStHHmgPZhVX7Qhp4tNe/cSzaHBYXTvOSyTpT7OWZKDOjhu/T6UEjhfZC9aAo8mGtvLpCui5M54xMhCasd6Wsp3bRy0M8xFR4Rvzwf+2SmJxj/0+rgNS6iNKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XySTT+6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XySTT+6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51ADC32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720918822;
	bh=M0j+sNa1lLrTD1MtpL7bR8hDkMPav2n/500dvsvXNgs=;
	h=To:Subject:From:Date:From;
	b=XySTT+6JqjzmyRQnl9M1xYSYFaGiMXCLts/+rOwGh76EKg7g+fO59o2DXU9rVlnTL
	 XvObez9Sugk7M/CBMtupU8DnWL6ox8Hj4FZuWLHXpv31vREBrrPYdYLoS4Y4hrs6NU
	 NgNksMKIZhuexmDJK59Yfks3V9RECaYp2g93wa/DvHu5MmUHotcXdmis/zZcQVd6xu
	 eZceFAgLok18heetu9+QcItQS27UyGAUJO3my3Ni+zkug2yVLPrTj09zh8DNz4hLo8
	 tQ3srgcpmHsdOBDvTdXn1qPq8CDbAcWnmvWCXQfuwT13Pr2qH43xYxRnv3uVFZ1SOq
	 73HsLN5T7tq9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C033CC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091882276.25563.7144007499362544713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06711e6ba1fe985d3464df4b1feead70d3ff252d8465ca8fc85e0303e4ffbdf
Date: Sun, 14 Jul 2024 01:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720918822
