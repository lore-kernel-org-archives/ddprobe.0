Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C43B317173
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784916634; cv=none; b=rKGvltsHz3yQv4lOZvb3oT4F1GF0uQ/U0Zq0T5UjYCQp0TxHn/HffWbqO622W1ejvQxf9wWaPSvaKKTv6CCNse+o0rNbI07rBgsgPGEZBBA3VvrqK5F+hXsmqm6SgB+VP0xyRZzFnJMeTR6CP9TOkU35ujHDcCnVoSzVLfifBJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784916634; c=relaxed/simple;
	bh=pHOnUioiCsELZ2lFbV31h6IHtBeODWdgzM+rKXa9Glk=;
	h=To:Subject:From:Message-Id:Date; b=g/4ZG7YI7EqSSsuTOVsT2boPiaj+verO/DrnHlagbgocxfVGfMbot8Fkd7YVCq4pg0POpU6wMiLX/pEbCKlb8CtekxuvI7EkNvnvCD2fGaTChb38LF6vVE9/bYgKTbS9Ns/t3mgrznkTo/J6zwT92ZGOQVOOhlc/8l+NqWRkhwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn6MsoIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn6MsoIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D603AC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784916633;
	bh=pHOnUioiCsELZ2lFbV31h6IHtBeODWdgzM+rKXa9Glk=;
	h=To:Subject:From:Date:From;
	b=Cn6MsoItT7Bbd6dqXrZ3CwEtPWEBZPEmGRG+DAmxW68iLsvUTNh76XUFRJpqESkew
	 R8X3YWAlV7oGG2d9653Q8doMliyiapLcZw9z07N3lWEP5XXU7r+TEGtrJI4iFEQWTJ
	 5ETqNLpU+z1McfbnIorKuJw7W9kgUF3DRLZA/Ck+Ho75savBwrfeiA6tTpRSu0BYn8
	 A3gaWIXjW2fteaa8YGOyxx3v/jgSSy6wNwlXcBPUx/Hv25eRIgmMDeacmZnbH3KSBn
	 9/qKmNL9iFkb96JkOihw+TDvwN6QQOvwRL6OpGOX/s6ZvXdbkHZwD9EZJRu5TfD+I7
	 A9oJT/4hILMAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE59EC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491663369.24970.18074653667608415354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ebd00812ffec27c658578d455366df7a914f4072f2f24de08f98823f1dacd9
Date: Fri, 24 Jul 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784916633
