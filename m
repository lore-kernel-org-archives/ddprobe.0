Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175963093B2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772312694; cv=none; b=bdIND6E3WcBNVL1xjgQWkA8pP7go6UII0hybI6qsKJjmryueJ+qkKKuPkP2CgJbpNS9DWDS2eNrSKVUiVkBp/CC6Oyo26WZ8R54R0E5IqnkgGbX4ezzCkBqvbleQ2RLTjL0MyDF0YccilJEyhxQx/9TY5aMkwnboW6EXbEKov78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772312694; c=relaxed/simple;
	bh=nsiikSoWiGn/+9WKQF5AvNzu4gLhTXj+WF0YkbGd8/s=;
	h=To:Subject:From:Message-Id:Date; b=tOP7KE0PxlV4niOWhwGMOw8YsjT0whmcoLWIOK4vZ18kCtCOfDN+op407oQUtGodSTCzKrx+0OjGBAROXADcH06tpoPAGP0mtLmrCcqrT4wt3kH4ljuH5dboZQnQc7rBoLj9RPbmyjq4PrPJdkrJsn2ecHf5pWPgNPFhT558c60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAgeB/aM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAgeB/aM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B514DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772312693;
	bh=nsiikSoWiGn/+9WKQF5AvNzu4gLhTXj+WF0YkbGd8/s=;
	h=To:Subject:From:Date:From;
	b=EAgeB/aM/kAcbQdFG5ByYAcN1BfT+Lv6XnDWWoq5M9GXpoDVLyM4nLkS8DOG4kqM7
	 C0l12p7ZHRjgNJJBZSe1/jDdkr6WrbbKwngLqw+kVYkaDTTrjRHwYy4linE5zv8zJa
	 yZTo3IIQVEtimcfgj/h/2f4d1u6pK8zDW7c4rIxCriq7JyzB1HZvDC/OvoNdYriVLL
	 jU5VBvqxabxI40cnu9V32onKP/9nXv//1Jq/mQWrLXqT809SPLJVV7q1gr+3HzFO4C
	 cs1gsgrm2BL4Lrfjkpk7EqN/wfZHfQypG7cwewmw67spRw+JrU+iDNFjoKtGzy4Qaz
	 O2BLVPhPVMv0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7BCFEE4FE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231269361.32577.2124288993618614346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4096cdff8b26d6c4a86149af9e6f933f01b682d8862e89e26906f8177ef93e40
Date: Sat, 28 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772312693
