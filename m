Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E503B78C
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icI0Nn9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCFAC433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701341896;
	bh=mkSWhCHUX6MCYQYVtEqCuJMuPb2DAPhv4lERHH9ExNU=;
	h=To:Subject:From:Date:From;
	b=icI0Nn9QXLeWRzk+8qZlTVkZQ1xdmVeq9Q7T8O+gL013wFGr2Kk1xzJZDJMPOqwsU
	 rfJR4sHuzR0Iy0tIY6afDWMnrzmx2ZSqqp7WRHwmscgjCOrdNzRFsseUQYEIDOvKwy
	 x/yJ4ZEqDKnaal25lBa0wTjJSG70ejIAr0rHh5CQYg4PJ9HdcXu0EZGclefngF8U+y
	 lPbX/YXMk8bNwL62CeT5hUXrukBOhQ0+O0NdKoGOjJY05VL4HiGc+tx81GI1lxleYi
	 9lu1AwOA/pNwBH5JXeU4jG9Ncwn1rh3GU0sugDznY8FvJ5vYDLvrrPmkD2S6fxldnc
	 XTBE4B4T1BGRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63696C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170134189640.2283.17900406628368690476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1b9a5c4e75b274de3dd1e1fb32155fc4e54784fb26c1620cc7ad5b1585b741
Date: Thu, 30 Nov 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701341896
