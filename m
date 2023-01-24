Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7248F70
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 22:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4183C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 22:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674598985;
	bh=9HKsENTJJUatFqq6w8zs5CBHK47hNaMZWEO2U4Zwn1s=;
	h=To:Subject:From:Date:From;
	b=N99t3nHTbsBN+FSME+n/FUhFCWRkXzFDlckJDTJMIkqy7QCQ3kqSsdS43/NhF5iht
	 YiBG/BhxdPGSXTzFZcqf2HHqFmZ8AYGCPztVo/khrV3pqNGXZobfhn3MLTZLS1cZpc
	 QmIsaTCG+lMSeJb2lTd6VckTOMroK1cesz5WlgUXFbP0jqdh4ijfMyIVuEmljnkTdz
	 VGaAQjX8e9otXgeZLmu2qVNOOkHTcek15kmeqGAsWz7Ze27Qb8lj2XAef22UnsmFfG
	 s2qN9KHQzlOfEjiv+dX2ufx951JO7BMCs9wkKngASQpznHJWL0FeO+oQvGBCVBrHHZ
	 TsvtoOZJd38sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5F5C54EED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 22:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167459898577.28426.2237221243255277368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310693355e460e95015ad2f052be3f74e734af2c882580edc61beaaf170e9e93
Date: Tue, 24 Jan 2023 22:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674598985
