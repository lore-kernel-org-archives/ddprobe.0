Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D07213C8E8
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775531734; cv=none; b=ip+dB3ouMyyDVtwnnK7HSwS7fBIq5qq1aSHs7hrGyutp73RFhP4WtR+tAK9o3BaqJX2HE3mNg+72FbFiaW8rYJHcvtDmI0Vr5999nNwmWKyEkEO1K7JQbpM7uynT2aGRt5M2BV+KT7yujQRMSWVYm+yz9KE9fD5dDGL8F+u/Bo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775531734; c=relaxed/simple;
	bh=MBE/H3DPBvBKiCd9Suw8YwnfaWMn3f83P4FNhWMNsjk=;
	h=To:Subject:From:Message-Id:Date; b=KDQJx09oAhxVZBpXRcSShmNtTg9IguFk63H8gPpd0w9FyJOTvDLcsVp5axKQcFJC5hQdwm1o2urWlrFLF4tGVsPqPnGHrPMxVUUTQnPVBsqUA3U6I033d+q7F+O7eL48fAbQZfZ1cpL8ULmrpY+JiI9GSnWG2SM2tg+FGlUBj4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ldegn1bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ldegn1bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C69C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775531733;
	bh=MBE/H3DPBvBKiCd9Suw8YwnfaWMn3f83P4FNhWMNsjk=;
	h=To:Subject:From:Date:From;
	b=Ldegn1buyffFPRQ4ltxcVrkAypGg3OD7slAlGMRiU86S1jrBCzX5RKbwz1fORRW6c
	 nSrByRaOtFTWuQpx4TR360Pyh2I0j8lRp/SgWlMJwo6O+PpVL5cpGb106uZe9CxZmG
	 0nBg6ONEFXBOQl194L9nuD+gy+6Y16sMcZSeNoofavZjKp4E3qmAPycxFqcxR9RS3B
	 WsRjJTzktPqtrnTyhmnT3uJfGkPhX7QKQQlv+JNYP77N6tyu0Taxj6KPFumjbcKu+e
	 Gz40pnNKO98R3qflYFxnCc4qQjd3Q7fAhK7YLvpOqBrmM212vlKZe0Oax7ro+2Mmcz
	 t4Cx3psJQ69lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E5FFB5189
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553173371.12043.523607182081655267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec51e794627c69e20901d3617b9b3e8d256fc0800c10aab983398123017d7228
Date: Tue, 07 Apr 2026 03:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775531733
