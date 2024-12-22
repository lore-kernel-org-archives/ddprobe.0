Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD672913
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734878154; cv=none; b=L6f3+ZqoXyzn21o7QRf/DHRUG3Opwpvovv7cQohCaWnQpIPL3OuLC7KyM5lYC9/FbSP11BGI7utPPeT52gVT7tFmVh+ATPTun3wvb8qSypTB49BLng8B1zJCYwZZ8Q1Izk3+Gox9wRtprxJ3gTOXdKZnsY4FDjrPdTPTSSWyL5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734878154; c=relaxed/simple;
	bh=RG6JMCL6Z8V9WU3rjFIaTe25SSeAyvEVyLkEauHpmC4=;
	h=To:Subject:From:Message-Id:Date; b=RfNREsIKb3NFKMNurp9iua4VDTsqx37x4PuiDsrn7diOnSv7a88QfXXECttVpEHXEBIPBQQFv/b4vxhKzNF358hYCnnZxvotMs6PZ5SYBqZDdGZQqTXWEn/S6ofwMIDkOkipTcox+JIkW7g6Moq1vFSpDZSKXPPgC1xZVkZkbRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jj+v8JU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jj+v8JU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97ABC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734878153;
	bh=RG6JMCL6Z8V9WU3rjFIaTe25SSeAyvEVyLkEauHpmC4=;
	h=To:Subject:From:Date:From;
	b=jj+v8JU1fJsEFUzBncu6b8clM+LJqJAjufVZoZRkLoZGCTITbmG7xFa6zOUbUOlB2
	 pD+F5HRgVIZTVdUsRgE/H9/5/R1U4xtllXMgRZ2NerYdWj/wpTb3NKqAP2gq41rCbi
	 S58xOnleZeU5qvkRi9gYZTgnzkKXWG6gSbVuRGC5EHtdRSq9vuDNl5MYHg8rh0ncXg
	 8C8syp+WSkTidVe6dnJ1X9AyY1ahCrlpXZkLl7PnXLqyKPnBU41bnE+7qBSI5cen4Z
	 f9SAE3fgHq4o0WoZYcsv1u/2mmKVbeIl5MURVahLRUTNgrkb8+Yg1AWWOyI5X6xogn
	 r5Ow2xC6X6hqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3C1E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487815362.27179.17292590925548265875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126bdad4282ce8282b242de9bfa773e318366bd59955e0c38bf8af9222fb109d
Date: Sun, 22 Dec 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734878153
