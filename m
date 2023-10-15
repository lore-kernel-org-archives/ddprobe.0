Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7346015B4
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 06:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bETOHrVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BF4C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697352428;
	bh=/YWlbNbw+zVKFVe5+FoaKe07zksRVL3UGjPqN1kGTJk=;
	h=To:Subject:From:Date:From;
	b=bETOHrVlt0BGMCO8N4P+drqfP9PcjFG9Ui8ssWpzxzBBkBorAb6lux2hk6DSNDzkG
	 t9iIIr2CN4G9KjZObZxWu8vjTibbfU1LFaoX0pLHqAbluXrOBTRfaiPMxExAplMyRG
	 +GB3APynfuukzTKKHBRi2kTZDhvlfuKblpv+eHhfTV0XO2WkdKyc5xdivF+b4uwAR4
	 zmivb38uggUexhFfkNn73qHv2HZ3t2U7wFVBfiuAx4YBCIt8RtYWHBn5QmAJ87zCgG
	 j+JC4nMr8b3uPxe/Z2GrT4WixQG7FBkVILZGexEE9QPuuEEvZnm1TCYMEbRd/rf72c
	 1Dd0bzR1b6apg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6048CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169735242871.18625.12595254628467546622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a07e16076428cfff358023ee387be2dc87d4415d1b77d8a69e063044b50478
Date: Sun, 15 Oct 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697352428
