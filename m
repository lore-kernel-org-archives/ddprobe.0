Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE851F956
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714138943; cv=none; b=X1lQVgEGyp8an5Z3SSQc01drz4mwyYA3Wl5ane2l9m/BjPouZZ4wMmm/5c/ULN3h3kSnLY857/6yDW0lxwJclJWK6zHx+HyDtRBvkMJNhGufUVLFl6IXJg9oxeAEXMuBLHnVA9Sbgrw9o7m+ruqSl9WNr285xbSn3jyrhMdwLwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714138943; c=relaxed/simple;
	bh=C0GDAyfeqJbp0gLX4Scf4RgEZ0WZJ2bH6YzPYFd3yt4=;
	h=To:Subject:From:Message-Id:Date; b=d7SXBaA82GcF1o6LaKK2S0YWLiY+PHcfEVWjh6kkp9zAYAhN0IfzY91/y5Lgd2lFGmB8QQnPzU2fbayhTQbKz0ATa7hG4p5FRuf9SRzdanT3esqGcgCYSmXdKNOxrKOCr8RLfm5sZxcPSIYaxWkBX0iUqJdvPU9GYMBP7XzTDmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4Bn244A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4Bn244A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DAAC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714138942;
	bh=C0GDAyfeqJbp0gLX4Scf4RgEZ0WZJ2bH6YzPYFd3yt4=;
	h=To:Subject:From:Date:From;
	b=m4Bn244ATqItpYrHsWWy6GiTBgc2Ltc8CenmIuV1T8Wzcxl5Ie1TznD87Z9zwotTr
	 XZD8j3MmXVRVL69iYIWdPpyaT10fIzHZnq/KvUAp6ahukE5W4lILGgWji/icKIrQca
	 GcUm3KlZ/qmLf9lf4Ulp9ixoIwddAyRPhmc0R4kuAVun1WmdJIBA4GaTghI/OLsRpF
	 jmlmQiRIKSAr1gTqsFf5ErI3NpGJzXEeQR+tzIfiW3lRwrmJreeYjegzUftEa88kBh
	 mglmS4uo+fZHRFMTg6LM9ETZQdWgG9Daf4SmsMCU6otKmthrywv2y4DicieWRcayDd
	 giSyefebLKBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE420C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413894277.15208.1473720058917193368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e592b6f8615c86e1020a3686eabb9dd576b549ca4e9f1a36930e86a73e03608a
Date: Fri, 26 Apr 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714138942
