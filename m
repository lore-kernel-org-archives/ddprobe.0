Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048556FB1
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 16:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIHLV6Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD78DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 16:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697126828;
	bh=mmKVp0NOCARxGnBPKMIBBQJ0BuCamGZ2a4v3YlN5k2o=;
	h=To:Subject:From:Date:From;
	b=MIHLV6Icg5HikOQQwRQeVfgAs3Zqv6NYrkFsztGLmEiN0BDr0fi935SQU3NUeZh/E
	 LugUUZI/dJrHgWb2NZvkYRzAyQI2pZompyqQYgOpSneEtQq4zqvOSiL3QT50tN+4Bu
	 C/RifTXzZNKhJSe0zVVZk23cHPBrngV3bjILucFVWZJmzmheHffOhSdGU09RtcRNDm
	 PqfEey6qsSxh2d72OUwGnJ44myMHTbcXlBwEd5nio+mnrXX7uDecOCV2tHS/zHmA+z
	 tl764eEW/n7bEE+Mxy7OeLSUb8vKYUj83O1ZfNOKQuQGbjmtsb188SoI2eeWiahDx6
	 hd6oFKQQqrsvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DA7CDB47E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 16:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169712682873.28357.3482518567331093325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e07be561fdab1c8af348fbd3bb050ff8597bb1d5d324a756554a92f3b24b9c6
Date: Thu, 12 Oct 2023 16:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697126828
