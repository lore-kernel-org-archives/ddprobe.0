Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC8D1B0F18
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741440534; cv=none; b=dhoPSvDrwiKHfEnx7YlAwwIChdXQRzomLXe4lGTwcaTmXbhSLLK4OCN1AlbU5cVa0Z+2Vk6ZFdZAg6FFTt/+9sheSmx+EUT6Mm0X4iqH1AurQ6aiRRCcav2UDFZAnqn4OfT+Tb1YFWk689Vq0eEFXQuFoUT7eQZW5YcSwy6LPTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741440534; c=relaxed/simple;
	bh=0rYDyZudQzXSdLEGkyZwii374+V8nRKcKEEF/LYaChs=;
	h=To:Subject:From:Message-Id:Date; b=jAHRJUBLEPcsEEv1abrGLS5/oxwgG4Z0JNXgQ1z7P10ak2c9LD3hlSHqTKbt2Vd0CjF3987B16lne+GFJP50vIsRAEZk/bIhakCldJT6QHNU4oZgybnbSS/JdR9ecGATSwPxHLvALJEZhLCmou/Y4vBK0TPrE3IhJtY3PwZfvfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4hbWZqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4hbWZqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA16C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741440533;
	bh=0rYDyZudQzXSdLEGkyZwii374+V8nRKcKEEF/LYaChs=;
	h=To:Subject:From:Date:From;
	b=b4hbWZqDV+ANwz8Xj3JqKptZ9t7vfMxzqrEKHH5jKtH8C4PB3O1KEQN114fLTclWU
	 wPrLhiRCTrKui90uLVy1Kk0UtDVSr04fjDueKildBQvyv9gkWHE2nl09HZ4EAZ/O6Q
	 lucAdAYDp5MFkJT01c/FDIBhwuoEX9LEr7Niyr1AeWMhoBKRvpbcCZKRKT2HYh25+W
	 JD4saEFexyrEPLMrpXr220Cg0b4+PWCwNsJlOLqoF0jIRgtalb1/9J+J4l0joPe8u8
	 oJ4C03GxXdQcHlHFBVjQ1VQZ59MiKXIWAUfRvUEedkeltewKqHcyyMsS6f2xHha+pJ
	 2mO3c+8WdqWqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995BDC28B2E
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144053362.10118.11909482119936962856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6adf92b110f0947d4afe13a2fd43ecce939f09f4763a02571b235934a0461ace
Date: Sat, 08 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741440533
