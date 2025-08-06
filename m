Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166B1220F3E
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754471994; cv=none; b=aaAS72q1uLF16RYmC9BQMvIjf8Mg9NlF88siT3tlkhcVWECD9IxaVtvr2zJ3l4ut1/ZV5g7koZflDXGAobXF4SPQbx2vtWMPW7hmW9TUSQ0xXZ+T+B2WKSRjhghrtKWZpInJz/KvG50eidj8gafM7TA0l+DzDkIP6j1+BZyUpmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754471994; c=relaxed/simple;
	bh=pFKnwhuAz8xCHpBb2WrquVSzGGIlxMHMmDAsmoKHpJ0=;
	h=To:Subject:From:Message-Id:Date; b=R3r09U9Y2dererdubB/078YqSp1F4vG/Qr+rZNcDe2+ogHsWbPqxnfH6bbEk5FDkkk+H36KUbNS9X2cIJfcNKRTOeG9uGqzTqizNvirqaGUDN5LLHsUuu6m7KoNWDJ9mZsblIdtwgMG/MC64TX8cckcPfD6xWBfPknkV4TQzurI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwLQ4XJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwLQ4XJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3DEC4CEF6
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754471993;
	bh=pFKnwhuAz8xCHpBb2WrquVSzGGIlxMHMmDAsmoKHpJ0=;
	h=To:Subject:From:Date:From;
	b=LwLQ4XJnCVoi4OIT1M6bN30b8fDHZgjHcXFDp30zzpJ4iO3BxD5BgH16TSeeZnQwu
	 2/ptwJrY3047hcJBCKXpmW0C819tCxf+C0GSLZrl0zjV7ed6CKwoUOtGxY0Sw0mbge
	 p6oJwfaeT8xRFKFZeaA1eBNB3J5/ETH5Eg5YYJq4pDFDb8NAxRKR0l2vx3AY9OvGpr
	 elFz4q2V/R3+6JhmElOAFploIe3+C5fa1cEWZdjLkRApUq3QXV1un2KObPxp8th1Fs
	 caMfkefcaYZpeCDHOisC9F4hg5+Bk/tSNDNrWc6u6IgnRySVZ7xd2Y5Ry0edLASdpL
	 hOzLcOLbK9LKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F162C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447199357.24111.1240124125537717287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ef5cd2eb5401af1a32bfa638e067bbbb439ce777761f6078f1276d85cd17d6
Date: Wed, 06 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754471993
