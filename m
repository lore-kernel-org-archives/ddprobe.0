Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3825A1993A3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746252594; cv=none; b=ljhxsuSfBw8lxzzia+paoSvE7A/5jNPXDUsPAyjuhr30tJMBHjlXoiA1X/lfuiZAR6bu8GVHJxIsVDDz4BsvvsyKbfVBVMRicjCiXy7xWCmIhQH0mzKcg9XqUdhm2QImYyipxoVCR92Db0XaVQFfHlzy1I3CMdoFnI0chmNYaRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746252594; c=relaxed/simple;
	bh=Hd7wD7tv38yqF1RUZ2/U9mrruEIdTu8gUqY9yHB/FSI=;
	h=To:Subject:From:Message-Id:Date; b=pM/ixGA+toB6fKOqzZyLFmd+waug71AWkZ+Cx+kNQI8ww5l6/5c3HgPvcLZNwf/EvbchODYnWuXIamNZ3YLV0+VUgasKVRh2DvSu3QcZYn0eyHvlGxP0m9RF7xOPZQ8ZM+t7RnG51fRmCBwRb+gJGhOWjftcXZtGjGJyylBrQnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlyyGA/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlyyGA/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF27C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746252593;
	bh=Hd7wD7tv38yqF1RUZ2/U9mrruEIdTu8gUqY9yHB/FSI=;
	h=To:Subject:From:Date:From;
	b=GlyyGA/LbUPr3abMkMjfdATvcl3+9mU5INkCPwJL/wpBmfFd18R7QS5rM2tJ4fEr8
	 EzWlBKHqmWtEF87BFzBKwEO8xsk3lTQCRUzhvNsypxWbRhJYtLcDpAP9KdDFwbBB+/
	 APc+mEVRSS+BdPk1d8zIcgWqanw5s2wPhMPPo4isrAOq6OK71tCXgOWAh+9oeluk1f
	 J5319euqf5QBRy6XXp23suUDMZh7WAWSk9OxhUsSzkQk73zTMLEv962h06RBGG6wzT
	 0dOZZARTMTdpvYL1mL6V9Y3sfSM3CqjbPehMGvO4/KiqLxjNCPwwf3952SdeErVD9M
	 hIBlrsr9kCEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E763C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625259357.31499.4567711550577552080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc26328f42906e7f0dbd5650bdcc3700bb165996333292c725d584a90d9529cb
Date: Sat, 03 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746252593
