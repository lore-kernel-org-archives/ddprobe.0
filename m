Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537602AF0A
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742962794; cv=none; b=CxaZjlfzttuz3Px/ZVgFlqwIBoDx2KrCXIG8+0c4A2HIM78erlTv9wFUrau4wivyKwWDUVrp7SL5RaZ4aKUk5zTER2xaRk09agEksRQYp7s2qyENpqIEG1wzCcDdqAIrdaioPfbJMMNqWecHMXnxJNjBpfTJPyp98ZYvfrCmjCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742962794; c=relaxed/simple;
	bh=Xc6Ljm4KUe2prnZsFqPIstMsmG/vz3nVOr9HqGISGGk=;
	h=To:Subject:From:Message-Id:Date; b=PF+OgfnUKOBqYgk2FciprtNc1gf3OuujQULgISKA4g+a3x9euj805RLcJwnAZ+1PJ8YrhQTdEf1tv39DUwLiVGHP0SeIEmKqBKQdFO1Q6SHhZhEYm+GCl0QMaLWpy4vo0uVeLD8FnRlHWOeqtQ6IxXCTb+loMw5tlaNANDyWIjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxv0eHu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxv0eHu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00A8C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742962793;
	bh=Xc6Ljm4KUe2prnZsFqPIstMsmG/vz3nVOr9HqGISGGk=;
	h=To:Subject:From:Date:From;
	b=Uxv0eHu6bNxmnxs7a2ndLFwrtRPMWaShxWda/DaXkp4zkC07VmcJo0Qk31wPc9vtc
	 hiEk+riTf3Jbrn4OJOc2btn05azikQP8YRC4MajFGhf9vn2+firfOBt+ja74kHohDA
	 nJLYlWwsUebbbmHvndvL6lhWqgLO6WJCCZTglNIWHlmOYZfRjhlc7MjRPE8+72h3kL
	 uU3WNvHIlTcPEQNKv+RA7eWVhz0cAQcAtqmGHpXe+bA7y5gx5LuRgTmFibpYFvG9gd
	 q4ltLgVx/F5PwJ1/Uam66UARKwmjueN0XO0pN7mPFXWHPSvwZSb3kvABakpbHVLahr
	 xBpqrZSodJMew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4538C28B30
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296279365.2624.17272630620522993142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595755e461c647e604537d7115ad127ddd5fde9e1b76b1f7a2d62062c070ebe8
Date: Wed, 26 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742962793
