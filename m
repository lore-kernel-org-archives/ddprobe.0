Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C4E7E1
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753859994; cv=none; b=FEY7kdbmAOsF6hK3qDECrAspJJa4C+25Ur04uK+or8tN8Qytfa5j1STM9+mdt1jQxAvMexVTqKIwD9CH3g7/a59i1BfhwgiJiz4orzbzAY3dehqu53I70FhhZAmilvq/FweehMJw6HN6Beu9ZwK4QRdl2JA3XkCBzxqRTZfIxn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753859994; c=relaxed/simple;
	bh=Zjwb4Yy9Qi9v6hNp+ej7tjnVfvCmuObFCXu6rLopuOY=;
	h=To:Subject:From:Message-Id:Date; b=Jy6Jwwaa/cHY6vIeB1FCGwxQUMUn3xTAwO7z3wL1yu65wbX2iPHyEGia7vtwlicu8DxxMJC4rgc0vGel1PodOw89Gwi2xn5NOJtXk2UsVku5pV/xlsGzovsHoj4aM34yEzV1yL3b4AQVoLy3l/p9IABceI3pDSckxW6a578pd5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFLkDHJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFLkDHJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8352C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753859993;
	bh=Zjwb4Yy9Qi9v6hNp+ej7tjnVfvCmuObFCXu6rLopuOY=;
	h=To:Subject:From:Date:From;
	b=VFLkDHJvIGDspYeQlKZAL83I5oPVNzau1oaphsOU97WG65ZzDxt+wu1T8sKMwp7/I
	 A+AHV77jWvBufXy1LH1u3nKdKLnN6AfNmVeVSs8wVzJMxUA/65OXpQfYosWU2dUvcg
	 dbVx4KWfoDhzTvVGbTa2rtFEziOoSEeyI57ZDdNc4z6Qo0bBvwfYcQ6G7h9Y9W1v9s
	 fCm+ix3Hq600XlQce9VUAxDZWcuYOWt2gHD9Rq2Y8vWq+ZMGBDDYcuvvfmKagMXQGn
	 pPzKCWSAqJ8IxjgZnYBXeBR1TGdLb+4Lv9dLFDYBcyDypALE+d1KFI1agTjEVa9l2W
	 bI/RExCXwNbTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94589C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385999357.5962.15065195663632345233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4e00257f12ba74343fc29a2f7314294e433293b8741d884c9f469747875f5e
Date: Wed, 30 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753859993
