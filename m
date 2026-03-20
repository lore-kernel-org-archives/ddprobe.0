Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2344371D03
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773995094; cv=none; b=mBrNigSPHU8Oak8PFKSD32gBIS+TrMm2D8kAD0FznlWCOFVODlPZ5kX93oI4GiJ8EBOieSPXxapj0REFK0tAPyZbvJ5TUkb9ateloYVDan22AoPiBW5kmqjHJP9uJqJZTDdLGQVrnf/JH0NqHviBRmX5gfjQoptLSX+jkxohkX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773995094; c=relaxed/simple;
	bh=WHmIuAQF61cU2dHEeflw1d4/Bq8UJCPxfNrtp3IXRcQ=;
	h=To:Subject:From:Message-Id:Date; b=lvmC5SSkN6EifCDItoJ0knGNMeT37gz6+/zzufa/sI0a8SgqlYgLOgBN2bMt7il6KMWlSHi5SHaYFmNBp9W9LxKvTPuuLbkCTUiBly92Hrs5Z5YhOsTuARG0Ol+MCm8JMhKMZuyIsM4pweL3dkxbPRpCTwCWzDMTOfHn5qHiV68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2S5JZ70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2S5JZ70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E226C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773995093;
	bh=WHmIuAQF61cU2dHEeflw1d4/Bq8UJCPxfNrtp3IXRcQ=;
	h=To:Subject:From:Date:From;
	b=d2S5JZ708+Uk+xt6AhK9TtCNZ6O3Tfv4NDxIujSS1vQQ8JZHJWPStTP58D1WW3b7r
	 swr/6f0mRA43NC9tUGF18TsWqwZXJ+F0M8QCfQxi5Y1ELMmUmBgvnWF9tCSCfiHZ7f
	 dOjRPgPzhkXEFfllUV2+cJajxVQk1ykfqKaQWn4cN2iqhDcUcIAII0zHV3waRDWNxV
	 X09gnUfXmyG+XCGdtx5lybO8eJfTEXagbkxZ/bbT0H7Efrh0eiLojD4hN/M8rv/tPl
	 2Q+oftPncsxue3g3Jg9OVed75TXr9R2DbFDcxhognmbrlYnXbLDFB3wP3mvLtkj5R+
	 MOmXpN6ETZr7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE81093188
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399509357.8427.17313901034152896945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b69a10ea780f8603750b01db79e490224eefa1473e665ad66beffe0261c1a07
Date: Fri, 20 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773995093
