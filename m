Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7B143AA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756513794; cv=none; b=STTgYWMtrSFILzOudhQb7VWI8FbntGtQtk3ezvBFuVJIah654dAA1szoVrjTcdRnbEl9woAW2MdR5TIVHWimGyyE0tDHna14dEWvo+ieXDAJ8+XKrxBJOpGfju7nUiRfT6/smXnTV+0bSniM6WMa0XXJAETw9Bjccz/o9iuCNHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756513794; c=relaxed/simple;
	bh=HCYGLx3mlV/yDu2D909TMolVyA1XPVr/b24C+tqO5d0=;
	h=To:Subject:From:Message-Id:Date; b=fjCvbQDmXBzbBACZr/v9pwiJhIl+2XfqIgHzdeNc5JtgNbO7oKFsItNwS6C7XmzuRNYrlMz7EtqJZy4XbLHn1tPMhg4FEZbNuiMUKTW9waZOVp4ncW5FmG71dlVyRAL/1sCXwoSrOZOr/ge0OHQNZwzmW3AE80tcUs8Dnz+5Yhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKNB8LpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKNB8LpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9537C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756513793;
	bh=HCYGLx3mlV/yDu2D909TMolVyA1XPVr/b24C+tqO5d0=;
	h=To:Subject:From:Date:From;
	b=nKNB8LpYqwMNODjivVakYSXbDXKLzRrVJRBYfbgU1FypSAaxTdusJRa2huiKMcsRf
	 ZAS1YcEXpT6+EWEzN9KD6y5NXe+VOPdtRRxUoB7EhnZIsa832kYa8wv/JjWjOI6ynr
	 UemzyhX9T5dNqF9Rx5SYrIg4/wUMYWvUGMAMYfFEHl62sn3+e69TyZHjMPhfydGAeB
	 Hjvtmwa2PlJ5exl0FA6xASPL7lhji4wN9Z8NuOH6RTH0OjSoB4jULTOOtuRUMb+T4t
	 BpUJHIZQMnfF0meAgyy3N7VKl0Sv++mWKfi4caCayHNo/SiqqQtzwE4HRKC3e0SflA
	 TnQjXA0UH4e2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96069CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651379358.26396.14007036491836203860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521581beceb7caf5262bad7c746c579849743d5d19a7f185897d7778366de695
Date: Sat, 30 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756513793
