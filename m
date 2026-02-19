Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECA7199920
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771492494; cv=none; b=Uxhdvb4ZYcqiMAofGRvx6TRyUNTi32CqALIRWBEWMbYYLpkA/t4l4/HSTmvm0EWhglsl5jaAdo2cRKTnkjXqpwU/wd7E6vRUIM6xD7RYn6MO/vpk/deYaJnQXQeCf2Scld5LCIOV3hxxdnjyR/kTs8iHWS1we4ejzZYIuR7VbpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771492494; c=relaxed/simple;
	bh=9WtJRTzkihYCzuGb/oRZ3ul+rpwKjvsmWXGA/yzWz7g=;
	h=To:Subject:From:Message-Id:Date; b=Fc/Nc51Md5MHtyKCWLyfF+lbZnW6sPunlHlIMtN5RyuNwNxNK9piT2ch3gEImDj8lK4uJh2pqTBhChuLFgGJiuvZ/8eLaH1Jg4j+f8kcF3dmXosp+KWx9PCdOZzDnzdjT5QX2LWYYfyPP/VJBAz0Iee4SKQNTdrSUF5teYkk3KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEkgz3JR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEkgz3JR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC803C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771492493;
	bh=9WtJRTzkihYCzuGb/oRZ3ul+rpwKjvsmWXGA/yzWz7g=;
	h=To:Subject:From:Date:From;
	b=rEkgz3JRvgMuGp7dt3qTKFNcTve9kSCtayUXBmuYGHG+veAOw8XwSn6O6hPVn+Fxn
	 bJIObIQ01pBdLZSVC7GJZ7+9MkezMKn3qUXyCZ0LoYduWEcN0UtjHNKEZr9aNVbUz5
	 Sd+nbU2OesqZmD2t+fy7TBU/H2zDARdt1DjXhYBqZBoJzt0tV9agfffoZeKpqvO9Qy
	 CzATE+IS3mH/a7F2EbDaZlDIOML1p34JrtvXgdHju5w7aBo/yyT3bbRLQ9micbF0L1
	 L31ngLGjZB4u5N2GRryf2vFChVf7nuMTSie109mXPEZuztuPFOXXzQvbixjsym4Gf2
	 dL8JvR0XPDNqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9809DE9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149249361.29477.3976066871252836924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8e2938704d0139cb88b376bbc4d0f76a52810db620857c13b71acb46dac867
Date: Thu, 19 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771492493
