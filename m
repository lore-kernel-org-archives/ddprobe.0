Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92400CA4E
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778359654; cv=none; b=Vv9Oa9o5WxqSSzU7TU+gb84G9cFfY9CEgp1/OfGpUpl7PfMRPpKK058RIbepu9Vk2268Li+JCQvCZTBy7xmVjHtjPcbbrdoV5GwWeNSEcbLeZxP/Uec03ZYenI09b4OhTDgodzyxYcT1uChcSfCv3gHX0/r6NBhDLrw5/ApOeHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778359654; c=relaxed/simple;
	bh=MgBxs/tnmxAqz4K5+ZJ30X08cMtm5ZXXti9j8vuu4l4=;
	h=To:Subject:From:Message-Id:Date; b=kcqsqm0EFsTCf9+LD3mTw3+XS+XB+RaQ1Bu6lKWrRh/ME9DuX99NToYXFy7bG8FAkTrWt1gYUhJ1WKIgPGs2LcAJI9fqunKgim8be4eGqWk/1lOfv6fe7GPWxGwxcH6LA9QXxScKkPV7l0qg3ThAZCQbyGazG5wCIi+Ms62B4zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iO2ommL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iO2ommL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 33ABDC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778359654;
	bh=MgBxs/tnmxAqz4K5+ZJ30X08cMtm5ZXXti9j8vuu4l4=;
	h=To:Subject:From:Date:From;
	b=iO2ommL+XPwvgIkNRNFL4d6NDThuWhXLqvJsPNP36p1R/1kOTduLU2t3AiFUHwXeo
	 8wkK5vci/cTFjU4ab8izdt8VWEHSY5A9y5slVpxDoyXs2RGhc7Hk74oAAbSAth+Q+7
	 MZGtEkeVtcGPuThJYo35WmxviFEoLiJPfx+5pvQL3QTSx2hdAUwm4H+gT7YVlwjJdg
	 ojPGrjGorKcIAEGcz+VH4wg48rUvxGQH0tvB+gAWtiNlFoNhwWlj+0Nnta7fswjrqg
	 L4GMsr1xxZpsWlnsiVa2Jjc442OdxVRpueYVpNnF8l0xcD47H0Sxsi9xRugWlWyO4W
	 bmHb8vwdRa+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E578ECD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835965392.11147.12131503171883872930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fd02d719ab31cf73f276cd2e320f1578174f9c59eaa4c455225abdd7ec18f2
Date: Sat, 09 May 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778359653
