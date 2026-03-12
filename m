Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184803B2FF6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773351894; cv=none; b=dXBMvNWYOlf1qHZiaKhVGQ1GDwr4nLE308xwhTpbHkUTarxn9waNRlbhO3BW0xu8hf2eeDT4qlopC9SOEW0vv6LidhU8Lzs/MqSJ8HNsaKPazY+g+t2UCinidM1S7hOuYHggq2x6Roi9T12wixYMpjVJbrGjvKPaPVCjfJwH0Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773351894; c=relaxed/simple;
	bh=NWit/YBbTgKd+9BbfcYFeKUXNzuxx+iFDxJMTjH5qqY=;
	h=To:Subject:From:Message-Id:Date; b=kKWDqceWkhbq/0wYl2gR7nkd/+cTplnzqkDagCnCiOGX2ui0tYx8+nImbB3pgYkA6VPPmJv9G4yPbJxS3RsMob0znbnqPNZ+EtYAJMXFjvoiuW1wkfTswAxs8IQE5aY0ByoSUeT+KBqBRT1Uua4aV9R6wTA6h6770LDLkVurmwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWlZztOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWlZztOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E1C2BC87
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773351893;
	bh=NWit/YBbTgKd+9BbfcYFeKUXNzuxx+iFDxJMTjH5qqY=;
	h=To:Subject:From:Date:From;
	b=mWlZztObRV1/CZpvgw5Hn1ZwDC2X46GejO9JXvXdWH5cOFkBFuwCpO/TWOgEhvDHg
	 RRGdQFzq+8XvGCmgkr9PEWrTIq6FWjmyFlVHzgsW3qtGPilJr3ZHwXOSLkZj3LvUmo
	 1ZpEBy8oluXbBq5s9HKRR70MYTwiuN606N5MlE+8g+haKgqcCEcXGW3PIp+M8Kfyak
	 RSSO4VdUUOyHi2RjAairYyR8u4HCEI8vOdGC1W7CR6rovlvNWHa5UX5BQjO8+qhhnE
	 dUg05a81v10q9HoA1ddV/QVnfl7NX7W5/KF33BfuRdZCEICl9r3XIvSUU8zO/KiHTO
	 wBSzPJIjceEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910DD106ACEC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335189358.23925.4547761246657499501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c58cc5633f478c02324796f449454d43a5459d2ac372405cc223ce76894b28d
Date: Thu, 12 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773351893
