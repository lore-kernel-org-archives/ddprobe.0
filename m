Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADEA2DCC0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748744995; cv=none; b=tN0E+e8O2DsTc9JWo+2pgoMm2GjTk7BCaIJSeCk0ZMRgVzCAv38Mz1Uup2m/HlsjTI7K9dKBxx4hRRpiVJkcDM/aUHHyoi6u0cwByQFYNbEA/o9pRM9TOw6vz5rzdFZ7SnwS9IRK0gMskfvO98bQl5OFsw6XgEqABJZb2IpVVMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748744995; c=relaxed/simple;
	bh=deYhLbqqdxRXOxJ2J9efLMVCyQQE9mU84DuOAL8E4Qs=;
	h=To:Subject:From:Message-Id:Date; b=K4QvovuMSiMrUGWGjiJrJ2ZuDC179Vll3PDXd9JsWVjPz1GQDpWGch15zaEP6EABwppLHrsstU2kcV4jN+s3gjVmlFLdM5tOm1F8kLbvyXNoHujGiTUFs+AsxCF9rBzxmNa0Xe0gdxBas+c8aPQjVMIc9yQ4z9BR99rwopWL+M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lqe0g5Nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lqe0g5Nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C2BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748744993;
	bh=deYhLbqqdxRXOxJ2J9efLMVCyQQE9mU84DuOAL8E4Qs=;
	h=To:Subject:From:Date:From;
	b=Lqe0g5NzSZcHskhVQYQNlOEq8fUpQ/xdFYMPGksYxVT/T3KVfNi8RSYuRtJN2G2gw
	 VfnfGti/LbdZYb9aKb411XJ3R4LBU2qfbI9odgAioXcWG40RXv1xud1/NJhnzoSpJb
	 Bi/aLK5Ndb02A0gGbM2TKqNTMOk48zyiyRgca1i0hkuu/NDeERQ2gdTqXDdXWfoNGM
	 fuQ8olG23O2RAvfUSJSObwkJXVmqm/b745hS4ZK1kPYPAvgb9iXnGC7nFVYfdcHRD3
	 +js8OErAjSIGL67I72Pb5/3tleeNvh8nGH+t0Ocz6QuJalhvREfe8Jutm97yITXAvE
	 3yeBEaP9gTAaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95086C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874499357.9296.10889990098703650833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192d7d0833e317707d577a50acbb9692bdcb1c280b774dd2fc38badac41337f2
Date: Sun, 01 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748744993
