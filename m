Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36615271A71
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782844114; cv=none; b=ilKZOHFZ/o56RvLhO8wCfYDpcRfU6Z4S3A4J3MtqnpKZ4NCxpquaET/65EBmwjsyyqmQdTUW6DOaMsEQtXySAwby2Iv9YxYgbNZMdSb3lQ3u31g1KZVtV+1aC8XqIlWMs79wZn6/aigTAB8LLMMnz5/1KA0+Z15uhJLmjEFvpJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782844114; c=relaxed/simple;
	bh=oXkqFlEGexgfkE/b0qdLsmiay+GkQUGeFlRygpQ7ABo=;
	h=To:Subject:From:Message-Id:Date; b=dOGsZJxMDTav0ZmxE+PftHFvTdJiCNiwUBoB9UCXlGt3JcMIof5TuyJQH9KdHB3D9jGBGcip1c4E6n8v7GrkZIe5G4y/ULxS7BUZKbFJkHTdejxiwMUU9dufLYiyeX3LVsC1A9NciglMT60sMeIVfyN+JgGLwK5/gRrt+H8wtNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kqe2H5UT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kqe2H5UT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA047C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782844113;
	bh=oXkqFlEGexgfkE/b0qdLsmiay+GkQUGeFlRygpQ7ABo=;
	h=To:Subject:From:Date:From;
	b=Kqe2H5UTOqkb1xgyq6cQYIkey8TwYcBA6Vhf2CmA8FIrA/FqvovNlZn883X8fyblU
	 jRfzxtn4XRY+DiJ1cnlMI5ohI/JFf1iPQU/uCE/shYorygvTOdRiynjrHDAygvUaQS
	 8KzMJf7zwrLkpw90mTb1S27Kk3g6bWKAQom+INTc3ORW9XYdCRwWXsBI4X2s5CBBHP
	 IhP6PhbBanS5o8YqZQhuRVasq3D/MqcVnsOwllc+qXGzPvMQTEQTSCmaq8iKzAIyoS
	 qUvQB2v5575WFyFESlQwoJTELKD6yN1WGUfEwculy7HjVKy/j4eM+9Bcd6+Sj4ykjy
	 U8OQZN14oYdAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAA5C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284411368.8731.17904056894200799259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e72eddb734cf784b20ff52636919f006ed4f2c6ebfa53815b0a02fe436a314
Date: Tue, 30 Jun 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782844113
