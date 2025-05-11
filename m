Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D64E1519B8
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970794; cv=none; b=sHobmYuIwWcE4Nst7y3QYOLPVe8PJFy7qOiMQb3FpVYMuhK/lV5/g0VECk1a1WcymzUt0WAwrZ20OKTLIgcV++KprH30WQeH/jPw75HBLITvEIZLkPeQ0OxtXKclKcbCcr++P4wQx0+bIkIcLAyQR66S6QhtME/8KIc6V+rzxXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970794; c=relaxed/simple;
	bh=Zo1t2/w3x1pYMnTtXULOfC+WZN5Ky8RAAF5mbfH7+gE=;
	h=To:Subject:From:Message-Id:Date; b=M1ej/EnqGGeBTja2iYE4oGbJNDyHlDLVORA8ii5vyqJEQGthWcVP5itYSgeVjP0vZt1utS14F5S15K2XWhmOkoQknvYBB1jYB4k0QM5mJ2i2jQQR7Sv+lXBaeLcpcozT4G2MPUo5nLnBhnoMfaZ8isIO3L87aNkrM5YwNKHT9Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozLzbZcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozLzbZcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23ABC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746970793;
	bh=Zo1t2/w3x1pYMnTtXULOfC+WZN5Ky8RAAF5mbfH7+gE=;
	h=To:Subject:From:Date:From;
	b=ozLzbZcymh9X0ZSeabuWoz41qALKGCsGNTbbeZozLZpJmVPq57Vyn5N6lXxCyIjor
	 rATuArrjfydE6zvd+8EkQbKa3h6/7JksHRoEAVO3Ff4pNwxPL4UMU331MQEkZKQxm6
	 l6t3Tb1jw02jz6CJ3jlq7GJZzzAGHCmX1XQbTPR5lIhxzRUPCSU6+NeVSF3SZDDwx4
	 RPhzQlan/WsFaIKUd6GcDypDpVQ1PI4ks+XpRJ2SmPIrdtRqyttkY+F46wod6Pf02G
	 vvv6IujMqyP2PVPvzHGhGRVcmx1KdTuWje0M3M4lhHToSmyvjqSX2t+qmHM1ynoLUw
	 cRnIqNvVpU1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90250C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697079358.1724.9272457400991511560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d3da815e9351e135aeaba99e2b97364f72b0227d014d90b339414c329ea222
Date: Sun, 11 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746970793
