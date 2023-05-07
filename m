Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8134C7C
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 09:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C016C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 09:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683452286;
	bh=seAGPn/2N5zVh4j2oI/LfZ+exB4rC+wupCwnC3XmjEc=;
	h=To:Subject:From:Date:From;
	b=tN83Xd6fiE7Wu+j6cne1u25OiUse3DzfGEmrPdFhpYPUcljw5/BQuL0Os9n2mMPww
	 7qv24Jp0DSLzRxFUwAo+oFQ4EFuI0iWK/ReA+Ixr4EsX9TKKEg5LsV3jjJ3fkByPJh
	 9YBN5sP3QR/7CVHRgqdRyWMtSVdAxHkBEx7OCP+rSs2Ml0+3rtzpGrMttGjNd0IdUE
	 w8D8TgadGmjEzdg7yi2stKmaexmoHb0YseO+AM0NNV5YAqVuRHSocELKLG9RT2VOtf
	 yFhyjWVcXYYGzjois64FfmpWf29vrce8/tqymTPQoZy/VaV5sQ5tOnKAUPQewOVfiw
	 v3namvQbD5OBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D65C6C77B7D
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 09:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168345228585.29028.8677708238468163111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4274ea4ba97cbf272646148f4b968fa7f4e5ec2bb0d519c085368e8a4ee2b34
Date: Sun, 07 May 2023 09:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683452285
