Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3396C280017
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752118794; cv=none; b=SVAuZxd6/1cnYUK3TjjEbdA3F8HDIsW1rzvPFwwRMB+mLbyiAlvoWtS/QmEdFyq2xKdTcgCnNDNPd+YTe1Q2NU58d5jPQGCMavjHjudJYz3ld/S2aH0QpoeFt1d+Z3ccaohRm8LFvgeKZd+AQMS1rj9xt07CsxrPEz7WaY7c6LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752118794; c=relaxed/simple;
	bh=IUAY7CBG4yS9aw2fAyc9PyIoaDxQdIbZETTqMZ/7t4o=;
	h=To:Subject:From:Message-Id:Date; b=krDqa5vaZUqb3hiD6/Qr3DNMMSKTYgtY/TCx5Slz9D7JqpW/a3e/Pxx+bpn9crEoI9h8QXDbxeAHTMJD1DQcVmmF+yy5xhT/eX2JGWAEeGSr+kt/1FoVRDWKe4feQX/aOEShoI9oMAAu6bhvTbpEsy+Yd0DPTPr1zsyyb2GFO88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNCsSIE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNCsSIE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4248C4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752118793;
	bh=IUAY7CBG4yS9aw2fAyc9PyIoaDxQdIbZETTqMZ/7t4o=;
	h=To:Subject:From:Date:From;
	b=ZNCsSIE6Ct6BFKiN+kHfPrbDaBJIkdnWCO/18rdmHmMKMmeaqJI2URB6ojxkmX+0C
	 okHDlu3BpNxihoFJeRoWmKHgtv6pxQcBwryvQnzx7+fASdVCNmqNXrMJEa4GALrDKA
	 AWeWZ3YWX0GDtG36j0IatbWPslbbl46Q4u/6/pDFEkJlslfkwzUo3viPCAGkC9nvJK
	 lN4tALn5r5rJMwL7GcYcviagqX0p3g0oq38e2bCrXKWSIl5C/Tzm2HE6DTkXjwhVps
	 r4gz+T6PwkeW1l2ZoDT5ts3ZViuoaShjCLwnew7odfqo3txKuglZ1U0qeCgRbxwjq/
	 WmWZRgyUMQV5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A8C83F0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211879357.5780.2027174954296977811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29bf9215864a24ea0903de3cc88f8838b76594af71ec56a53966f74ae32511bc
Date: Thu, 10 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752118793
