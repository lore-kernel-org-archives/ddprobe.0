Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4724170817
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737606354; cv=none; b=rsu8tsjVaFvg7gsA4l0fvlKS/XDkSW1egbvImk93AF9nhuQHQb4Olv0LesNAURhK19gtEYu4Z5tDoUPwoD4eVvozOtmUdBEp4tkJMnWKAyWGqJjb6zDigeAuSsdfXO+5/WDWOS8DcoSpLIVpCVgC/KJKBiV0JMZzCF3ZdIWM4Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737606354; c=relaxed/simple;
	bh=RlTq7W7/GZC47/dJ+jS1jkdWCnaR7bWq/GCI9+JZzsA=;
	h=To:Subject:From:Message-Id:Date; b=Qz1U3xZCxPIpRdR21zFQU/dxsM+/Bryh1KoqTCc+OfxHV1SV88KTspbIN2PcQYSJblgvzEe39DPMkBHyvVzLIpV02LSCiSl+/tgWkuyGdBhFpHIlgHUBZuvNuZBwEA/Hofb7awr80DGDfpreh7CCKLPNy8uE9f0aN/VcwPK1dho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dN2EhP0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dN2EhP0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70EBC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737606353;
	bh=RlTq7W7/GZC47/dJ+jS1jkdWCnaR7bWq/GCI9+JZzsA=;
	h=To:Subject:From:Date:From;
	b=dN2EhP0ztbhR8qUIMHqOX9ETt41HTOh0QkYaAJLAQR8g2TYl2pMqOBC/KwhNpL39E
	 4l3khcFdrUpW3e+YtMGBKKYeQhFhvtLjO5FczwrtWfFg/IqjZVYt3tRmLkzzCtFGgL
	 YgkDgOq0mg62LFDjbF+478EA6jvxAPXdeCTTP7PO6sKYlaJPbUHLr2+n6v2NxPDA6T
	 YFL2qw6ndRMVGjntXKxzG2WZqvjvEjL/Yh9ZnUxt6df+WvRRK17FxFZW4TT+f5HAJH
	 GpfckstQdnKzhiBBg+BqWoA2+GOcxHWvXD+vjZeqaMhbPpxOMFenv4VpUn1sEKHHYS
	 BETgLkHjDmbRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C5C0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173760635359.4731.17091568657944452218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa7b6629391cf8931f098290c42a87d348da6eba2d37de3d373b96091b34ce7
Date: Thu, 23 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737606353
