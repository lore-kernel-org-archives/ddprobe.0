Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1B81A2630
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757859594; cv=none; b=p7efRx5l7Z37N7YGyQXrTXSWbZ/QrnpbL+OG2KfmbRIx7dhyQh9aHb5YQ45ztsd2JEXh7KLd/ljLd5p51QkTfCEcHP9Gw0l8BHz42u6p0V6NoJg9iNSAVK3PG1tVsbyL0WMNSgI1nrtnjfOTpbNg8I4ypzo1DmV3Jzq2wtQHGb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757859594; c=relaxed/simple;
	bh=Xwi1xX31nf5YXs2poqjX34CvaeYuBuQFHIfGSiXUHeY=;
	h=To:Subject:From:Message-Id:Date; b=E5kNQG4qL0dY7e4zO4H5DW+Cb+MCKm4eUpe0q+ppG6Q/oKxeXd8EBWslTo760GS2k+dTzDYA5xIJLlQBblZqhntgzuJXksm7d3lzS5l+YQDhdQx5Uf7yf4WnvQ5Dicn/rAFsNS04coA6FmDg4C7KCETsKuPjfntqZ2o/tVehbdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKEsCoAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKEsCoAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757859593;
	bh=Xwi1xX31nf5YXs2poqjX34CvaeYuBuQFHIfGSiXUHeY=;
	h=To:Subject:From:Date:From;
	b=dKEsCoAMB7/irIlsR8+Jwmtp7AZMBqyul9KHvRjUoG39Fzk+GgZ6Y5KXGB4gGJnQu
	 26LuifMYfiXf6r5xwBpodGVub6m0gm/nbbM3+NE+3YVbTBNGUjWT2/FARpBLTNPXnS
	 crPAo/5qEfiZVm0eEFwLQIxFaO03fXNqp3Dev3Y5pcbhyPOuknmiweGK5NE/oh7lE4
	 YcTC8pcch3AAGSE7Jd51Lu7a1QznDT51sb9bukKrTiKYbeLQBnaQgYW1KaZZHx3U+n
	 qr54N+PqT1rb6s3kiFzugCdTJWEVnrgEgTfYOhs4/FA4tsaoFr/Zvb+ge4QLEuUOoE
	 aNtOMsUCH7rjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E240CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785959357.4730.10866941493050131772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e989206619a6024a621b9926c52f050ac582caf766cb8b56a5fea32898f1b84c
Date: Sun, 14 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757859593
