Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A334D51A
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PX6mAJJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B5D2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700204296;
	bh=ZxsHEyuheOSzPv75kA0so+tAZhaz1SgB8QJ+DwdF+A4=;
	h=To:Subject:From:Date:From;
	b=PX6mAJJSgewgsgLX0OYOffGMSt0IdqwNH9Vx+kE5Y50A2ypfs7jK+s5/nuLxMP6BM
	 Xoco0W/QIZsSO6qUjJLW7UG2sdWO9JXOB7ltgWRfc46e80Elmh942AFWRPlaCmK6ko
	 Sg5NzZnMcV8E4o/aCt32sWISAv4fJQ32DyExpxz1w7N2xHSuyh/Ydt2Ncr6o0eM0S5
	 CcNIFs4SYBv6swV00OTD9IULqdNJnb2HBIZ2goiRkca1bt2quPVXTnnWMD4fIT1a1x
	 xe90TMx9vNfeUctDkqc8EA9W0MgqJZ+Z3n3GLECHpEB8P9RT4ILgm5ewY1YNUSVsiF
	 vRZSDwRuzigyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 790B7C197A0
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170020429648.19647.4449109063569597816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2667c30daaa2887c0cf57b38d7030241b13bac64d89e1c07ad82f45b24ffeb23
Date: Fri, 17 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700204296
