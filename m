Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C24A11712
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751078394; cv=none; b=uDbn685G8gN85+r57YkjTGSRQ6HtkcK2UYJH64G82Y3LBERnIzXXF+gu0Qi4zgbmlmR1+6eD5Qf7SXX8lCttZyyAw5gzXoVX9qjDhNVv5RBmHFMgdW57rv3B1sYxj61cDL8VzQQMdz8e6P/2RssOGaS52AJqGPsSGEVTA8TKhoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751078394; c=relaxed/simple;
	bh=1sp/q3ZhazWGBB7K37R1sglaaeH3TVuBRa6L9Zu8g6g=;
	h=To:Subject:From:Message-Id:Date; b=NLtlmfLpAE9p9Y/JuTZeDeoRRY5CyNKKOZoivUG5XesvN0wjW4D/hVgJWa0rEiAquaVkAU+eZxRu4Z9Gy2dPsWJQQSaG7ojAzi9V3Vco80jDQ6CnqDDeYDWtfhjekqim6jWVAoN19IxGqpS8grTI/1FScW9Mb8mI/cgv5Dz7BNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5ulim2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5ulim2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751078393;
	bh=1sp/q3ZhazWGBB7K37R1sglaaeH3TVuBRa6L9Zu8g6g=;
	h=To:Subject:From:Date:From;
	b=u5ulim2xyJMuoj3MqUpOQyipIxbRzb/UwC3ZlazYOnMDNgL1edJ8nxfvZJxzFz7Ya
	 lvR2dISiFVt3NjeBtFynapwwOzZM5+1HOK8gXkf44kY/+1ZxO6LvfbgvMZAob5v96E
	 vCuVZSMeFs2BzfpOtzgzOmyeZG65eMlOuIm3Dmlv/TEaW4X2rdKAOyx6k9+Uobc5zc
	 f2mujfp146jLrCxy2DUuIOEFV/hyXeAb1r0BAq+f9ik0D2sWB5X1IV8ZB4WcLuOeSd
	 sUQjWItwLTX8kTUsP2+bejyvX7FysMfzM4w3WMpJSJ3sgtDR9FFigB1ripv9Wptb7Y
	 m5vY5zD9rI7uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DEC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107839358.28997.10916135746414108904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68add3fd6e5ca28937b84dff0bc0b3d19101ed9e8ddda2b46a25be837eed9553
Date: Sat, 28 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751078393
