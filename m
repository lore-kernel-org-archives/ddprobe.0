Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E743A2DF72
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLvyWhdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83EE7C433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704464296;
	bh=bJi9mQqfN/iSJdRssQG6f8g22WWw7ig6FufuRybe4Uc=;
	h=To:Subject:From:Date:From;
	b=hLvyWhdtuMBT5o8q86alzmx9kdKXeMM4Y4N5TKBJGTdy82cNzwy8HDUXBt3J6wb1+
	 DgNF7iQybKVqpVULV0RW1soFoA5MP7Qxi6wErpq2+Y6zj62cJpRoVE7XsBwby+Jg2X
	 5+nhbPuChCP7R8/5yhag/VN60uqF0kLj9mcp5ZyuyfmmwMc49gLjwXe4B4W3T5KE8g
	 GiZp++Kn3qpDr7CHkKD/SuyPLtwJBx50jy4/ARsJTozIIkp+T8Q7ogmd4/3gJ9r+PO
	 rrhoZm4GNrQJ+39zFaOmEPxdWvwlkmtkkgAA4cCF28o62BztW3Dk7hnkE4vc1jK3Hk
	 Pg+cDrucbWEgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6240BC47079
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170446429639.28831.12607560804715453865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a141eece94643c1c9f443cc4117e135c43c6a3a4e7806349a66995c919bb936
Date: Fri, 05 Jan 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704464296
