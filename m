Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276111E376C
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770999294; cv=none; b=Kl8em0hKWwMlHap82uA/GO9G+ChrOLFpxrm9B3/6JQIEpTsGScyyxTpbBKC2y7tiIxsLplVeb3EK47HsGJDdscFLb+jcdSntNWcah2X1/sSQ9X5YAfXRGSJXIEcpFppUD/LTUoiPdPzVgNVmo05FD+Z/0qR5tw/aUOf+sFrV04A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770999294; c=relaxed/simple;
	bh=1xHlm0qOFyxRUmmqYHM87oVrWCzaU6l3YC1YMy/Kzjs=;
	h=To:Subject:From:Message-Id:Date; b=Gpo1gmjAd0h3rIRDtyMKD/UOv7PVHYRbAx1Abl+i+TAFIVPzJEyMiCjZp7Jfa4U2+dJzgVECveDBMQvH2kPvb7kV6RhvvXwnT1+VRrHdLIcRcKo5qhg0M8OExGA9AEgkGjqxb2QDXTtQjTl1eQ8CpNjpqnhOX9QJHIdmVpXAX6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgA/h5tO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgA/h5tO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE14EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770999293;
	bh=1xHlm0qOFyxRUmmqYHM87oVrWCzaU6l3YC1YMy/Kzjs=;
	h=To:Subject:From:Date:From;
	b=YgA/h5tOpaBAJ+pktMbUmiTwt0xlIASygDLiVG6b7ZLXCjsxqswPXisYnW8qF7Tm0
	 a5UXbv58ibFUqTcFXewwIU2dmJ+cTOMSyCAvn1fhrqfCsLlM80iK8p0oHRDTosmgw/
	 2RMM+yyFeBEGi6tYwVtyJXqpi9iIxAKahRdHizvtGghABPoneXH2BN3Lmo4WP7tWTk
	 yUI4AfllVjdv1Y64gExmfEANEcY0o6dG9uOavubuC0mADt5IzZ+1WtM+wihB4RWsLH
	 pxjh8R7cGRvOKng3iReAHKw/opwqoER/GCsa5fJcIowkV2+kNnWksCFKGqSXEyi+em
	 gWCq1gCJjE0eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC13EDF17D
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099929369.14986.3925032855215609695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b730b0c1e69606679dbdc123ffb346bb102a59ddd0084c4effa38224b8215f45
Date: Fri, 13 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770999293
