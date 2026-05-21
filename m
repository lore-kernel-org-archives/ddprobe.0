Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156C02EBB84
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779331834; cv=none; b=heoFRGuX9+Efy9ZhNSTdhSsRqLaLBw1gP+XaVa7CJMdD9ifaJ2MZY63HKlrZHYhaAnVyoUk4eFU/4n70GFp0WW5J7XeovuaABOaLB25+qNsmSIWVZ088zJ+cx6Dtu8uy6xHGN0eMqmw8Hp1qG+v2FgiSrUdVADjGabNus2f3Ajk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779331834; c=relaxed/simple;
	bh=GGg3aEgfy9iC6ARyPUZ8yG3B0QK9iR3uXIoMWUNgYzA=;
	h=To:Subject:From:Message-Id:Date; b=XwxVbUAl8JdY+Gz/6YdfYS0EkwCu/jN0H3gzhiQGsOIGW0rM4YnSPn41rhYAfh36BMZL71XoQMjOiSdZFx4CJo5bQZFYqV7191pzLz+6sHQQ0too12q/I1l6CoJBRPOYRLrPFRiIwVZ6aXI82fXJKwDoQmvNwu0EQPdXmKxd2FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHcUprXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHcUprXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD7FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779331833;
	bh=GGg3aEgfy9iC6ARyPUZ8yG3B0QK9iR3uXIoMWUNgYzA=;
	h=To:Subject:From:Date:From;
	b=NHcUprXfGfHa676+rddXFRfQxh5yfP8PmWjlusBcD8UdMRiFYfT0Htd9BMueE//Xo
	 61YFkMQKQtG7bslLqVMPXu8E6BhlC3ZbsTuLp1s75ML9hJHLz5qVqVt7oEYFh3OcRH
	 eesbtoxcdOFWZMdZLw4U+pOJT4YvnPyK3wSnskx23U++sFg9uJykspCcaaKJCAjtUb
	 qFSVOK5gRgV5s/O1hdwZtA6tj+M9zLd5sfj8Zqh3bsH/dKixo673pZnQFOfK/d8IWZ
	 PTgFf/Id2Gku9BB3fCYHomou+zkfCHnPIM7L/xAVX8dlDg7PCn0qJwr9VJfBFFjn/K
	 HoBnB7fKWJanQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10DECD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933183371.14930.16998376326687031707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed899688fbc16e84012b8b800044b35b081bd51e701bd7efb8e874da70c2f4c
Date: Thu, 21 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779331833
