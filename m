Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28438211A00
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746692994; cv=none; b=U+Avu3Vci2IeEAoExBFEHW5DzdsGUTNfF6VUUmQIVUUiKe7rTOyr6ekleZiSBMa3raS0HDdQE+tH5QdKOvJWQIqf/3wqg8CGLIA3ZQsf5kStH7WJ6+MUYuIwjhyIWPEbmfLq3LmzMC0VSwZZW91sVHHVTsMBi7BQ67hUNY8VVpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746692994; c=relaxed/simple;
	bh=o9pRNLf9ba2XsoN+oDHBO6P97uGq3+SsV1e6tkRURZY=;
	h=To:Subject:From:Message-Id:Date; b=OuJ8h+rnhoFgFMuF8bSUkclnGYv+JxZzFM/qQSSeIXZaRHJI0CUb9RVC6W+IQZxLloEMBiNcTLrNZzk91qgUryOgSPMgAqLDKWlhuZTqZ2Z+5ehBQDA2vz0knoZPJC8UgLvphubESHHTMqDbk9OaBIJp5aaqAOG+iTsfdtIDUFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbbP7uPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbbP7uPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FF6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746692993;
	bh=o9pRNLf9ba2XsoN+oDHBO6P97uGq3+SsV1e6tkRURZY=;
	h=To:Subject:From:Date:From;
	b=GbbP7uPeMeNK8N/8hoYn/2wrn0TpBp7R6FYBvGmqenTPUggJiV79I/2FHjXk+RUlj
	 dP1vUK2I68Kxg/7KHGFCkGfq9Vqw6ubNHknmXO0cpMTCcUO5BI60cUHpSSvPbFb0e7
	 ScRrTXETBA0vMevXaqjAJ7ZfOss5cP0yYwghT5vIXt12cJanSs10Iytdru5ma7iD+N
	 PJjhOXwKtb8ytASG2ZFUcq1fHsfbg4dI1zRbbHtF1ttCPEoy/tXb1b54kEMVKBpEWZ
	 n+G9OuYh3W98p3O55jze1KAY0t+z/A86Bo1nhH2IUlmEycO1+5rXkx5MR3pz6j3wHF
	 CxStJekM4A/wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E946C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669299357.7493.15184050756311004359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fadf10c5e01ab58a6bbb4572270a95418e8fe8f5eae9ca36b20a0445e11436
Date: Thu, 08 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746692993
