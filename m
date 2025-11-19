Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856602E8DE3
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763574114; cv=none; b=LneLzf15BucU2a6A+D3/txPrywV1Xls8mgq9neGGGeqLT+Jd0zmaXiR+LgeTGp5umD1uEW89XL7YD841vUV/Hk3N8/8t0H7vei+10qCLQ5VCkS6K2dCvr7K90Sjcu++qrMdef2mAeOooPzeYw4IATKWBZWsFzNObZ70gvZ+2U9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763574114; c=relaxed/simple;
	bh=9cTjcbPOKa1CnOJdU3zIrwGpjpszdJl2T0UzgRnN54o=;
	h=To:Subject:From:Message-Id:Date; b=paRNsoRpKeRa1LwFz/kJUp196kL7WCzSaQw6iQ4Ib5nI52rrogiiJiRKxbBF3/ZFgkx4h6Eg/qc7RhgOTMzYkhpROxjdIzqcv9jj1tHejkZqxL4wROSn3Fx+VNW0lsscZd5NwDHXfMG7ZHh3NJes3tr0VuKeSiwKDXNjttg1UMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1eM9RUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1eM9RUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5192C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763574113;
	bh=9cTjcbPOKa1CnOJdU3zIrwGpjpszdJl2T0UzgRnN54o=;
	h=To:Subject:From:Date:From;
	b=B1eM9RURyKAcIiZN2OBCp07bDIgQcAU5JaEWzgmb2qvqfSqSJlcURrt7kvuFDJS1A
	 vewMgIsgyplGDpgVMF8e/4iZiaW8azmmAKy1RBiC0YVu0JSvv8v+hwI4PO3sN8KnP0
	 is7KWioSkoPEyjvginVnmVQOPRGUZOxm/8IhRbHKi66hKfd9VHXl9LA7KSNtlPwu0c
	 Bq6B3w7SdTFQGBRlq92rIAetCVRYuvO8y9XZEsV6e37T83a1LON1NL4wpKkSyUGQ8/
	 QQ0FghEZM68+WYbkUWpkpIgNChBnVaQmy3JIcK3/KPsz/5oNRxW9cpIAoJazaDF+cV
	 GD6MG8lm5YPWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218ACF58C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357411358.8670.410367280263088086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7759f98cbc15d33d141bb5633bd959f946fde628e715e1ed4cb52a65012f270e
Date: Wed, 19 Nov 2025 17:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763574113
