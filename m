Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8932F17CA
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 20:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUwHsLzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED5CEC433CC
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 20:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696624629;
	bh=fGmboBZ8SguRrGpwKqr6Fjz2de1SmkJjM4ZbeStsbRo=;
	h=To:Subject:From:Date:From;
	b=NUwHsLzMNRRjmhnvSuFGf71Ys5MMTey04HCtug2uFOGhDxiIeXX3ldeh/EKr0DK/4
	 GrtJmBLe8T4ZflAqWFmdMc+RDKUXnIL1iVwvuQDJefM7JKENJEGSxCTpV8gxmkZy8R
	 ahfYRlJVcKwy+fu2gM3H5Nkeu2AJxf2VSNxYQimX3OO+DzuRLlOi60YQ+aEjjj3SBq
	 uRZAkL7Bi3ggyEaFIgxp52bhHw7QFUd8OGL19uusk+/80huLPl0PA/SLRfARJ+6ugv
	 F7UtuIlHg7qq+PvhvOSJJN2cDAuJvJPtXwY3RNdeUT9cAKuZOLKxQjft9v6kKorOu5
	 3k39LJA8YY+Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C512EE9411D
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 20:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169662462878.12092.14236595014861671787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ea4a14f140c23e4cc3d1469d560fdf7eaf7d40244110709fe596e7484d5406
Date: Fri, 06 Oct 2023 20:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696624628
