Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAA92D5926
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776228454; cv=none; b=G2Fi6685CSIrp2FEvJz7rh2B9mYUFVje6s4BoXKiu5puM+GT3Gy+aHvpCXJow25Bf/F2SnEp4GhaAP7juloYVmjmXRYE7wPz4InEnerQfoOVsaISQUCxpOs1Fkrd7P3VSmqL/9jekA3hR8T5ZK+nReK3o6Ntwd4Vktn2hM6pzrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776228454; c=relaxed/simple;
	bh=DvN9FqkDaUYcd8GXzyp5pXE6aNH3bXpZ/G+0nsD3Qvs=;
	h=To:Subject:From:Message-Id:Date; b=i8k//St4b3lXGqZlbjLUHG12wYPNxCTx16Y2GcieMZOdF6g5kiHXpAh+8UYz+z5BlGQgnCBREXn3X3amcvyRydBRhEAEDZPh1DecWO5ViPJuGEpJYoEXfWzphu8T07jGsA7N/EbTz684y2Ms9cyDAuO1Rtddkr9LrNxZLOZF2jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxKAcr9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxKAcr9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EAFC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776228453;
	bh=DvN9FqkDaUYcd8GXzyp5pXE6aNH3bXpZ/G+0nsD3Qvs=;
	h=To:Subject:From:Date:From;
	b=JxKAcr9jAf8D8qRj8GAWlw2W38DNHhwTpaSsT4fTqXZu+Pswy+B5RhiRs1j4AGEmq
	 mQMGML4Zd/IEGJC89xkmaEFYWO7ZL6vmd/oAxP+TVBJYBInKXG/wO4IH9ZGt1AMjMG
	 YeIh39DlK6FuwTPKnXsjmQst4ubowWUuHo1M3niBpXStVyoG+MeA2licOdOHgXK7U0
	 +kYvoui+vrWsRQVn6qoT45XPxvvDSNcl3U/9J3Gw/0RytLzOtCgP+CPUWwwZBXpPef
	 mQMzU63n8zv6X7Vx+XqP14lI8N6sc1igjVOx0KwmD+QC82w3bIYzGAGQw5CEGDK79f
	 4u+l153db392A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B4FA0C26
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622845368.19104.11178896153110336859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e26280bba5e42a9af9f03f6bc01c2effac1d54cac524ee435e8fcb9639cf3c1
Date: Wed, 15 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776228453
