Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A59B5647A
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSNjv4ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE85C433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701382696;
	bh=u9eHL27miBSqk2b+zq8gWqHgzrT4xXT88O1zWvC/9vM=;
	h=To:Subject:From:Date:From;
	b=ZSNjv4ejWzz+VsxVrl0KgfwRbp0axC1alXaw9PCaap7vtgdaaWUut/N2UNpJLkpkR
	 /m8iiv5HqWHmlPjhRQCESqrk2yLPqL0PiMeENB3tu1W0OX+FkaYkP3KPmiA+mWjmDl
	 LaBSW27hLypwGkLAwwzIrUqKICQ86HPPlsKgCi8K6USMbcuQR2qyVpvXEWHtGoFqOd
	 /VXUq4z63Kt669RwjerTL9QAgGiFfnk2IQuN0NT8T+lio5KdTmSZ5Lb8fu5u5S3eXH
	 FOpw5W8dIrR45b1LKdHZWzlynsJ4G/2277s8e/JRizu96/5Uj/SRKyolitMMJW6xFa
	 hz48I64anm44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F37C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170138269639.8436.17992718168388482385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890e7ba08e48bc3195700908f483fddfdd3a2b0a9d9073e6a4df86fb178d675f
Date: Thu, 30 Nov 2023 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701382696
