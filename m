Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3428F33E37C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780431874; cv=none; b=n160ulZT8tJHHXWiqzSV9cVF4lZuSzyUEDPv0J5Kzv84fX6MEozBFv7GS4Y6ypJhxuxBZgoAWT0cAzS2srQlzCo8PXjVk9gskUqlAhfp+qpEBn0l6lQLKBu3txCP466/Ia+Q8FCz51gF3zTd5h3X2OIaUOdAIZWf4h5pfUMrVZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780431874; c=relaxed/simple;
	bh=x0/ERAelhaPwjTS1kxVv6dkd/xlGbYv6qvoM8G0Hhqw=;
	h=To:Subject:From:Message-Id:Date; b=s1XcohBC1swtTblW9+RdczPk+ts2DmR2JEpkEfmA2hAgl1wjaVUMdyJxbc7yv+N17hz69F/TdNDbhFG0W5YaC0L8Hzm0rZUfvb3cuoFEB7VQe/e2xmcQIjyzj0fqRrcesejUsGKFZ6ozfx+fj4KrNHh90bVjnXwUb2qibU4t3HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpEU4bvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpEU4bvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC698C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780431873;
	bh=x0/ERAelhaPwjTS1kxVv6dkd/xlGbYv6qvoM8G0Hhqw=;
	h=To:Subject:From:Date:From;
	b=TpEU4bvuJXptlD7xPfY6I+bBOTcQL0TDfcCbNzp6aEvekVNb07JzvCy4rtvmY97K5
	 ZTOd/hO1z9QhEvJwbz+giNJMSNSon79rsfLq6iBohZn64uPiyHruLwgNiYVAEM1ogS
	 Q4Fn4X/YVQhiiWHXUW2BHcLabY7fMDvzu9S1BpEQ5TWgGB0PUlcP4ZACvC7VE+KHia
	 vTQpblKuZWqo+H0Kq6uuzeU2n6pBtExEThtyx/k3k1cxgcXJ+vge9L949FYH8j01RY
	 5RKonsjdWWh3q5gzOEGGzb9qB65u7+T0TeCJkKkP6wxzv5dlwD0b/gkVWDKR0gQl1g
	 xZ5svLeLR9Ksg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF4DCD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043187369.25027.14228104215878434632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f644733c4039b5383ab36373be23118fcbeca1dc620fa749ab8036af2e6ba98c
Date: Tue, 02 Jun 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780431873
