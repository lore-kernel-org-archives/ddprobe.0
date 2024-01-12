Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C4815AC9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awmHvgX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1B5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705088896;
	bh=TY5sl9BiHLl36WIoeyrOe4a2DklmpUEJMC+LH60fYI8=;
	h=To:Subject:From:Date:From;
	b=awmHvgX0rQj1SasmYKVBMN9FstNPSL7v4XelgeGF0O/JTIsYsJNPllNy7bRo7xBwF
	 gFPF4ZbyltnxBpdHWV57Bhb0GWscR7uPletBJpfDu8tL59N0bWh0C63vub1YE/slyr
	 1WMzk6OFWXbs00VJTZYT2zUqe0NOxNnNPNfUWqj92lQFio2RK6XF/0gmpXGtJb0Rxn
	 IihaKyoEYyvFW4X4zuASApOD1xXZ42Kf6465Lach0TBdB1ueLvj8msak0eLanoxu2g
	 qnYrF78tmcg5jSRPBTdM06Tzc4fQtYFTgv+KgeQ76sctM26I25xDtdHcjyVg1KKW+b
	 99xtEDkX1TqrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B75C4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170508889640.20203.3406567565852625869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a874277baab8ec44f26ad6fbf6028bee0fb6c3736c75594e529efefa77928bd
Date: Fri, 12 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705088896
