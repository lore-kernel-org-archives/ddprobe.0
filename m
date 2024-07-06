Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5214E1C6A0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720304783; cv=none; b=Zz6i5N+YPi1yeR6Z/OC4i3e2RyO76JrPowedVOF7O2JtONubVw2VGQ/qPRMeQSqHQq2Ee/eQxsMrCY5oZiimu2ANy7R1Fm7jthgZZ1yDhRKEju3tBiXlvL1/bf5IusmJVrVaRQeyv4Bf5HAoA6QFi6WPRkTUJyFVFniTv0o5hos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720304783; c=relaxed/simple;
	bh=6WH4mtxhh/LSE6SKywTeTvGye/GjO/PJRX5FsFAxy2c=;
	h=To:Subject:From:Message-Id:Date; b=bpXbn6DKcAfU6vEDYb/xiQlHGkRdyBFlGb1EFbffvFfwGaHBqhe2xgY70VU/wbbGuqXnzTuiHlLaN6up5DXRTSxjt+OO9G53pq27TTwwjPxrs1k465YxO0Ip1nxtUCBbBHv6fjgKM+CpxBJYbCMkMtG+jBLkSgmKu+nG0F8lOFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pj8LZiRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pj8LZiRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEBFC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720304782;
	bh=6WH4mtxhh/LSE6SKywTeTvGye/GjO/PJRX5FsFAxy2c=;
	h=To:Subject:From:Date:From;
	b=pj8LZiRnDYYcUg9iukvigrUWrKbPHm2eBjyWzpuf00uTe8aMmawb+Z+JT92OTJvK0
	 G1R8qzqLg1FBr2hmxvQGZYGVmcQ+fvV3zW1AQbRH7YapS+Ao9ZDOfVzQTQMjPkG0Qe
	 LoZemmebhWkLieXGJMINB1sumL9n2D3QJ/+7/JXIFGX2Q0WDSIBQfetas2X1mn7LRP
	 mv2I0qTPDjIAcuxn9xLQv5jpArSiyKl5gsH2IHYbHgxQXpwfVekD5XgdtgcQ/2Wa7j
	 1+Cfq8npWrGSmoHTY0LIIS4fgz4cmTeiPjnUjafNLDIU2IR5CTkaxvbN3+/Z41DJv9
	 lzUIlcE5yOMsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0086C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030478275.31253.7523474742410914654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe405c90060573604c4dbf7cc9196bbeb63c92f364a7301fa225edd2cb123053
Date: Sat, 06 Jul 2024 22:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720304782
