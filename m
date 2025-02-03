Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E645484A3E
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738586754; cv=none; b=KkoDhU/NQqMtTitBG8jGQOS/HXDZ7PZ5HDnHHXJYVBkSgEwtdWdy26NobtkA17TPwNlc3HUOyIB5tSRqPFz9+1ip8pGK4QbIHLBCPBMmKN4hiTonqh8MXPfmBtptFDxX6l1vttU+8qAp2IMJrE3S8vKI2VdeZh6s3HkIcdFvCj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738586754; c=relaxed/simple;
	bh=I0GDORROFowQl4sM4zq7lecWWY9kHtb7KwfSZPm2X+c=;
	h=To:Subject:From:Message-Id:Date; b=Ns4U6749fWOmqnvYnFyff951iukUiwyYpCvRRQLTrdmWGVxfZEnkDkb67sx+J+EjhvoubtIKVFMSGOukLL62y+QrNe4UFLJXfiXHlzsNAbtVU+kHa9Zsh9VD3fH93ggGHjSyEeDt3xQC4n/dJJiOgg7vCRdTFP5SHEt5xOFVqp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhK5lM0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhK5lM0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1FEC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738586753;
	bh=I0GDORROFowQl4sM4zq7lecWWY9kHtb7KwfSZPm2X+c=;
	h=To:Subject:From:Date:From;
	b=hhK5lM0YtDjG2+eRSkySEI5QXI9M3G1MUPFJNlNIb/ZvZg81JhgRelNpwapYOzQbv
	 RJ6r7xXyWdU12eFBO/wtgBLNcKYdQFajEefsZQu3I6a2jzaxCULDqf5BxDWCISO5Dd
	 LPcDnRc4sUiZN7DTVbmmc7OMCEJdYlgkJ2kAAIDnfJV1Vl/IxLoCZwl6+t9oZJFsTy
	 paKiXEOVgXj7S8ZnOHBvOZSDSV4t5rhVBXNqalbh5kvTfkXLle6qvWAQ8dniQxnoRU
	 5cLHp9EpZJn5o1ou1Y7qBG0J9m6+Kpr9ilBOu165xSRpDifMWGGb1n3Vew/C80X4bT
	 FgUXHyqCUynXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7360C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858675367.7874.5974442705724938894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebe74ba597e8002a74906d99905d1fb475a26d638589d602df88c16267c3e98
Date: Mon, 03 Feb 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738586753
