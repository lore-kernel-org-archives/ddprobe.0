Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CA0A954
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716134543; cv=none; b=AqSqgpA3xEoBz8XJ5bJb7AQXZi9j7O8U4UT9tmMxU4enNsVeQ9O3EZSsoq+x4p4srDZWjgiimKUM0s8e9lErwH1ZJ4xxKHVYzfyyBoi53RVDVJfsO46AaKTbASm0SGnbhfjfTK0Au+OsDvkI5FdCxZiJJ3nPZ7fbb3T9QK6oWX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716134543; c=relaxed/simple;
	bh=V2xbevGyJ9DrlqiWolPXQfa4n/PN8NbjcZn7AqdFxx0=;
	h=To:Subject:From:Message-Id:Date; b=czqF0ew1tFG8WV/Ynt9v0UyfovX5lqZ6pQUnffG8nHO3Clhxn86sH0H3zOP4aiX/iLl95LhL+Zw95qJG0q6YfC3G4fk/aQoNdY2KaRV3/6mJ0HSraPyPWuROM3AAytBpo1Nz6IMcb+rh8uWEfD0EbjFgLJGdlq2vGn6YGacDVpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtBdysB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtBdysB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A156C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 16:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716134543;
	bh=V2xbevGyJ9DrlqiWolPXQfa4n/PN8NbjcZn7AqdFxx0=;
	h=To:Subject:From:Date:From;
	b=qtBdysB2dM0YtfjkLE9zU0I+v6wPo6qh2NiSSHM7KYc0sF0lkayTNpzie9RhQnFMK
	 kXfL/3P66paZ0Akfl8uj2VaSM2ySYd4OjqYh2Gs77HmuueQvFY5Qkq2Paj9ymxdDjX
	 Dc7TtZKhR9TRI4fWWRJqhSsXG8YddYwPxTaujChqtPdKvOHzKwPXdkaB92hMQUqp5d
	 FrzVOLWRZXI+O4uKuSezy9kIkXjZiM6bGJZfUPlOZ/YZhbGcqlecpyr4k8+U2XvJDo
	 +Y69WT3bkRwg+A+ZUHz2N7NtRyb5zLOMtxZzuCS5dPXAScNdW+3ouSjJ3blkLzCZmT
	 9XixoOGKSOH7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE6B6C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171613454283.14203.12900694557729952548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb9b2e82b11628e8f2db63affa1efde7bb59e1148f50589b7b1c53a1e0baa8df
Date: Sun, 19 May 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716134542
