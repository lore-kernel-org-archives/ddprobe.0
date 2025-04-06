Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B2D2628D
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743948594; cv=none; b=QuBaCwx4PU+PoLIzW3LDfoEFS3MC1I5gLuLfGM36xSNDwVrjPr1RztOpRLhLPk2vEmTd3iS01jy9qET6/PObsOmloDjzDrwflqgoYBi1hCx7urhnclXqTBn3kPjkEScEa009Bjq3pE7xKyDbVLt1fV/TtrgWoUMMErMAZNJ/y8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743948594; c=relaxed/simple;
	bh=4Bn01jhxMbQBPqYx8h0yZnP03I8TgNpySn9UFhsGM3U=;
	h=To:Subject:From:Message-Id:Date; b=j+43BqG9csxjzkrAjVi3krzQ1FjYqOzlHBqnljfp1zDMat6F9uXgJWHlIKIUEdgv3KOIlFzw+JHRlBhjeDWXCAI8aQfvacAcg0kURq4LYguavB0z6gg9fZUpTgZAqDxzHf5s/6xPmAAEvp+2k62kjPKQ2iyquV+hjqvgt9a+YVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhNaQZuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhNaQZuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2376C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743948593;
	bh=4Bn01jhxMbQBPqYx8h0yZnP03I8TgNpySn9UFhsGM3U=;
	h=To:Subject:From:Date:From;
	b=JhNaQZuPDQIzcLcKi6S+KbYAO94kVaiEXp6U9Runqko6nSP5jbNQdCW4uB8uoAwvQ
	 i/oLxzZyPspmGuAFZKgfJJ9mqpgyjjG6wXIJ28U7+8K5hO4nLu6DFoiJzOMMlnUw1L
	 BYcb0WX7OkLKbBBUc6xgkKymYJPLvNtiP4CGvcaqtGvXS2IEwS5EJE/2oImQ3cjhGP
	 XDoD2rgDOnZth4b4SAwTLBSkcL4oVBT08pqQTjyAjO3FKXeCVRq4/kkjQ6BPwboK+l
	 QVrJMXrncwGEiQBXlnnTT3LRIpPdnYc3CcnX6FurWaZd1wPKCzI4s3FjSuPoKfXPi/
	 PP1LBr5adHUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B94C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394859365.23993.11079287789868700698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37338209c7482bd12c2675719beb98856d694d37b82de22947bc58e925a78910
Date: Sun, 06 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743948593
