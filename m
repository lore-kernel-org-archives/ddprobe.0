Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E871BC9E2
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758772794; cv=none; b=YziyRKRoOeeOS0Fjz0E5qIDoDQ9fwmamgTNVhtlPYk2MhGad0pmsxE53F+H0P4yO+x4u5Ay8FXwJk4lXcu2fwI4xwIlr0ERNwO0lFDZTXxtALGGlDYLWtqg27zCJuQNtu15qsRalASs7c4Tphe5y6DH39ZSLHy5GfDycCYrdBNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758772794; c=relaxed/simple;
	bh=rr7TlKayu1Do4h7mLAlmwVK4cwt7OhARnYNmIy5mTWo=;
	h=To:Subject:From:Message-Id:Date; b=AjLJaVCKaCo4C99HLqn4xOvC5zxusrmb3WLmRl6XKuz/9IoaIVwHCZLjrJsqriATsbVZ8M07zTpqsbCkNs3UbmZJmdmO/TAnwdQ/uMEHpmRKWlKURo2ZbPv8JdZtFDeMAu/BVM0gGTAx5AhHeBYw0uACyY9DzHirCsou6Rgi4Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5hGwYY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5hGwYY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFFBC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758772793;
	bh=rr7TlKayu1Do4h7mLAlmwVK4cwt7OhARnYNmIy5mTWo=;
	h=To:Subject:From:Date:From;
	b=Q5hGwYY5eT70+dOSJMXLpEAwzi+GCDe3J1zPu6v7F+rLtTj/7WNgiGGLKMsTPzd6n
	 yCPVqMEB7Va/wCJLt5KKyFv73zKGeEpxFolwL2jWKXCh3C+aOD8hhM66hlCzbG+dJQ
	 O7XEQKrwJrtbzAlIq77aVcmDPFhTx1NsJdPbsrv3a3zp9eq8b5P+WjJKFcuFC99BCo
	 vOD5eGJ0XwXcuhaI6sXzNnyCx/L6/PQUOqghbk70c1qerwbm7o7ZgsCl1PoPVcwpy2
	 /gpGS6Yvux+RpLGTgZPI8ZP86auoIkXuuamlqQ+EISl0QqOb5ervLUAaM7uW4mBkoW
	 xEHYUzV1rrs/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9110ECAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877279358.6813.2335469916777433918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaeb8c583bad4d1120519ca614263c7c85e204f5bcad3ff007b800bacba247e9
Date: Thu, 25 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758772793
