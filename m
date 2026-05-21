Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F503672AE
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779336034; cv=none; b=s5vxb8Fkr8G9pGFQpshbe6DaxMVbg7CZHWKSyx5/D931CaQ8xqgxzQiFbKDhn78fwjFJ1MjmuN6KWVI8b3o0mHkGp3hnz8qL7lN/Llg5hwKp7Ml6ymALj60+uuETuw2YrTskKHAP1fiLiyfflqNpX/2GwLg5oukzkg2v8xQh31I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779336034; c=relaxed/simple;
	bh=Z99/MYpH5SNpHBRUQqFGNY6GAnZ/GztUdi6uYJ99DXM=;
	h=To:Subject:From:Message-Id:Date; b=e2Xhv7DV3f/JjZ2cZKyP3A3a3DKPaf7/yuskKzi7XJohB1IRMaB0gI2W/jqm78eXfonGFevjeET6ckAdFEFyCR15JcbyAqBhkqjagxtIrB68z0t6+88iJjm1hlV9hNZn2X58zmoCoN5VKKJDWzJMpxrkMmwMltIQan6S9Nj+5Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4Lz5r9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4Lz5r9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C502C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779336034;
	bh=Z99/MYpH5SNpHBRUQqFGNY6GAnZ/GztUdi6uYJ99DXM=;
	h=To:Subject:From:Date:From;
	b=D4Lz5r9qhL33WXZG+G6glR2NykV1n9IaaSABUWb19Sy3Br37c019oRu2ovJlb2aU5
	 jN6eKQq5bN2xDSWjlR8zjg2fNDGUU8IsiLrSJHFIl/87FHi7p8Qv9gcaACIh1dv85A
	 7bwc9WS4dfm6d7AXAP1rGw5xzOVMcoeU0g6U1ZW7BrXubAWYWbVD2ihcAsItkupQSc
	 HARmysvuay4jWPovcTmCPR4/JJRU5hoKa5niTjrc9BlAzPJzNUwYbqTTbY77+MTukZ
	 VPIFciM7l+gNh//sz7lhHTIUF3GjTD1C2O3tIjf9mzjqJaedVUfqV+SwRJpGT9zHys
	 yzAusKIUlIorw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA7ECD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933603375.5755.7103144342547437918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13911e58f14f834d34de2539abb440c365effc48279ad30be2cc27adc72efc4f
Date: Thu, 21 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779336033
