Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B795397
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72592C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670004654;
	bh=4MdxNIQBNQwzW4TSGJcV3UHhdOTWRLgJ0HlldrEmIJ0=;
	h=To:Subject:From:Date:From;
	b=eaudjs2uFX39RTUPFu4YtAdxBnDFTNlfoNLGbc7I3I0n5BE+hjUhO0zzlOcbBdtNk
	 gkqUMXl8vkj9b3eQMPPqK/jzjSVfUOEMBKNj2z+vt0iJ6yj/lMsd90t6H4GOP04RoR
	 FQ6LG7FXJ6fIbI2buDHh/6v0pEhkoUSprdnt0VXCC72Tzu6xPw3nt4MQD8IRr56UnG
	 fUbkGGgGyf/IkKKnC7P361q/sxqVAYQjnvbf6nkbbNL7MUnEIfi2AUykQ/gyNa0kUp
	 iOQM9fXJZCRPTCTjFWbESDn75IZ+LSwiPPZrHOrLN6a/ixEgi84ydf0JrSbYmyHYuQ
	 Mm5IMLQkg3LMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55883C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000465434.26164.15484895604770673748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b32ce0a9bab94240b31e929eeb6fe694002b9446eb50a74c5ff68f5e02809f3
Date: Fri, 02 Dec 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670004654
