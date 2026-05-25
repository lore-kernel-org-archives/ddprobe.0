Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1388B35F176
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779694954; cv=none; b=rKbBTZjshIpziuhiGaacycoHp6s3rOH7rKlNf1WOJxEuS/yhIOEPaM3jEwT5EaIXT7tBDX+PKC7+xZdF+2HBlyDPSeh9P9W+Xs37CPUSHnjEPuZC85SwuDqIV6DF0hsjpAdF+Bl7dFzqrcHueg292W8GWLGXPeYvWsnlbIhodr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779694954; c=relaxed/simple;
	bh=5ZwCpDhbDv15hG5+xWzq2yf8ZAfvFIZ3e2L9P8/q3Qw=;
	h=To:Subject:From:Message-Id:Date; b=oMHCCcwGcWMZqFEFgkoDe1LV+ZNJvfhr9m7c0hEbNmuTGs1l4zenIsxu+y/MbJekvACM5vedyQaFunAPgSl/3QvhNHl+vO8gMc2CcylL5AeVaeGbO7Zngjz1Ibo7tz97ZP4wYEjfcU0eng2IXeJfu7HyswZET7FyuQRVdxe8wis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjD6xEyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjD6xEyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1470C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779694953;
	bh=5ZwCpDhbDv15hG5+xWzq2yf8ZAfvFIZ3e2L9P8/q3Qw=;
	h=To:Subject:From:Date:From;
	b=pjD6xEywClKJNNrIXoeZxnHHZ9mClqUoL7GtI1qX6ittoJZFI1xJHL7wtLBFThQ6v
	 0TQILRjvmYes7bBpcDRhyR3ul6dkGrjSK3j8nZBX3V7PkrbAQjAN4rcO2W0c+BuJXE
	 ubWTAdWSQUb1hO3NIVpJRH9bEF7/fXNMEkpX1itN0z8k3Ebte+bMh6m/fLjeJo7QKB
	 5FzDs3M70bZO9iVvRkTGr7UGfWmoOrh9I2bzW+nCC1S3/fBAVwqzdi3QwvmGm1A5qF
	 Bit2ltrtXIqG6Jc7CNeU6s5RDXAEiwsJ7j2tqHuUnH4CsP10Hx648rIP/qy8PG/fzP
	 b2XER8jRPDjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97ACCD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969495368.11809.11717007933194923627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071cc1cdcb2ad8d81cccdd45f2c50eaaf19aab4bc00a67701779245fa944e218
Date: Mon, 25 May 2026 07:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779694953
