Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797B9240235
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736839554; cv=none; b=P0T2+tYAeO8uo1S7fT9Zfw6IgPHucyAh4ePAX+tRg5IkzENDllRVb3Z+iq0ORehwtUCUPpai0xkiF8r6C7fIB3XY2nhWV1a2He8c0ATFvs6c4s4nTIozuHU9h9IQdI35fcfCdHuW+Xg5irlKfdFizmmsO/e8JqIVEa1wJzWIRFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736839554; c=relaxed/simple;
	bh=FfSxZcEMnoCNner/Wti9Ri3vk3olJVePQ2uDlqr3YbA=;
	h=To:Subject:From:Message-Id:Date; b=eQ9mNGo5w26h45ee68oH/74WMNEvWsWWvjkWz+dInhc/0PGkloRs3prrunckU9qT51OBqskda8DyeEWjwNetXHm13HFQCrWxlklPNv45M9SIRKucBEj/OhBK0EXg/KOy04t3gcU9EY1AmWaAROhG2YN/lghPomGebhwhr/NgkyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QB4Bfps3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QB4Bfps3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D489EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736839553;
	bh=FfSxZcEMnoCNner/Wti9Ri3vk3olJVePQ2uDlqr3YbA=;
	h=To:Subject:From:Date:From;
	b=QB4Bfps3D9u8hpkjrCwGOFr8Oknf1+9WPI7JkZvqsYnlszk+ctNjlYCx8bNQ1ZxO3
	 84f3ao+heHnUSnZjYR5hbDwn7jy59H981JVhg6DV7i/qA5hacqOq+8KVL3BZZrVrF7
	 jckxKn4zUHhHlK4VZgANjVpDXk8aqbzkGOqapa2uTAqPzK6lbzNu4kllkVOoNGCh+0
	 whzUaqHYR9MTSDvQ/ixAtkswBytUp/jvp15Y6cU4mZUFc+gql0l6mN9PRPwrNJbLsE
	 RoIiAbYj3dsCqezA5q2Nh1KNXdrfLkx2LUDHq4z7Phs1FDmkXgpSkoVmV5m8K6DTQO
	 yrUsIVyt+L33A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC204E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683955371.18989.7949349271040466685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4098975ef9ccb86e18eb0243f6972405242b6075781b2da4cf16557d65d95c6
Date: Tue, 14 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736839553
