Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237D03074AC
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750871994; cv=none; b=Qd1PW3jzoaF4mSH9ex/QY1m7BYJfFo9jPX4A/rtrp1GzlpL+NNPIM/YEm+KMxLFqOUHJVRMcjEggJFDAubitnnA7970jJK36g6xCu1D7cYxpW9iVf1Swp2AsRGCNWXUxnU4D0vDpQYBScG6zLmPZeGaSaM7wVl+okknHrxxoBGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750871994; c=relaxed/simple;
	bh=91voFXYrNHwvbrvB3PskTQyUEOQ1EiwNdKm+oJ4NMng=;
	h=To:Subject:From:Message-Id:Date; b=Jmtu453paoCfKcvQkXNlNCwpdhXCkNaf0cq4zx0HbVAeYtG+oHbBR5oBwyvTW0hfbbx2zXizvB+9PrjtXKOVxmxgTAK8pG2q2Np7uq9aP+mRIb38kz6491rdEvTGTsa5AivSuu1cEy3EKqoFJ5FsKR441e3as0SLOHbhRjmwzPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5nbhddy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5nbhddy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96896C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750871993;
	bh=91voFXYrNHwvbrvB3PskTQyUEOQ1EiwNdKm+oJ4NMng=;
	h=To:Subject:From:Date:From;
	b=d5nbhddyo/84HtWf+wsEDErnvdRzYSP5zBDly1o82MlJhcWpc6wVVnN65e+i04J4d
	 DVUVfSELhuUvqmwv/v5bvW43b87TCFz1K3265tSBiXWi+FkdP4MHfRIxRD5EU9OyTr
	 Y9TLFSkCkpkLY/4vDq/C2XNhRSfk1IXDmHGC2yWjU+zABxUIiXBbHIDacX5CNPBA7S
	 NTCskBd4UY1pJ3Ki3Kj4P8Jh56Y8nXy7zvQiR9o9f/GATwV1sxfUiBZM6jnHtkV5TG
	 YX68P1ugOZNOOoNEHSbzevuv2KQoXQ+2+XIE8vbmkV2IwnTgwRQdpg5QKtxJZ4JqSJ
	 tJm3SJqJcTz9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7DC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087199357.12059.452083080875549029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1cfaa5d5dd3a9d3bcc3838e6e2ad6305afa9eea5c4fb97cae84beb0d047ac17
Date: Wed, 25 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750871993
