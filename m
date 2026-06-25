Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1282253B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782427654; cv=none; b=NIOFuVB5txmkWjX2DFFBAm6bDLYwbWnvdHuL3FlXXos0wDNAOQQIW7euRQLPu3L0YKDk/ENj4Te/4sgqGr7R+DwvOSYG03xL64E41VqKuH1ZZOXXdviddFPKleJLbR6ow+StlWGjzcMuVn95HtxvTG1nOvERH8oBdBxAJkn40T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782427654; c=relaxed/simple;
	bh=Gfvkdg4xxLgjxcVFnYJtDNABJdV9PtHmiD2oXbTk7fY=;
	h=To:Subject:From:Message-Id:Date; b=ck42MniRsjt0QPSOGsFP6iEs5o+yccBIcn6bv0BUhHOpUgL+LCjFZLLiI+JCnE3cof+4WSA1LdHmPwoQ3wwp0FxuSNPFQrI1Rlp7Ryqq9SncGxlf6zLWGu29YlzJP/pr+fNFH5D694Z57/7UJoJA2RKI+PvVs/FL7cq01AAFB8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFmSuHDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFmSuHDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0263EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782427654;
	bh=Gfvkdg4xxLgjxcVFnYJtDNABJdV9PtHmiD2oXbTk7fY=;
	h=To:Subject:From:Date:From;
	b=gFmSuHDpCMmApWqpt3YF5AKaKDge2N+yC61CfRKHU86aU7+eS5PAOzekd2eQbAd5K
	 O3y0+Vf59NdXYellJh8rMIwRwnRrsEJZYIABepcNuZ0DPmvbcJfkRbu3xH2bCmzHXy
	 blFpU/DVN5lt6o3+hz7+DeNsfsETmFviWw7T9GlAxZNZdh16NRbKkwZTiWvz8N3aVv
	 ZHH/mt2CFTUZyp2dygH9oTAbRVceE5hvb7S4Lz5JBziP1MWt+5Q6XfKv+h1A2qR379
	 0wB1FJvnP1oPLUGwtFMJj0I9twAioT6gKus9V1RROc2ygOSagq75S5IcogDPoanpF/
	 e2wQQdT8vV4UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23FBCDE00C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242765373.21274.1421976327765811986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded17f353260176a6897606a4229f6be4f8cd6b00cacfc02ec2f2d64d7d6bd94
Date: Thu, 25 Jun 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782427653
