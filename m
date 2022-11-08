Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E28A464
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 797F2C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667945454;
	bh=QkhwU9khXoktQOxcb1+z6NlWlY+Cv7AWKegzt/hTTs8=;
	h=To:Subject:From:Date:From;
	b=T78Vd8G8IKAFSBV2FAwDT3mTvm2qDmyc+3fNMXc/gTDi/3E18WVbCB5ndjptgnrmj
	 yeJ8At8EKnFnnNT8YMMWkdtpmMR+in5ys18bt2tSM2UZGFQ3mvXnv63dxJBGGREoRW
	 3AIliDMVbS8zYRJv8K1prsN7Z46LMyk4JMQCRiPOTy+x/yXxPYxk+dA0WqIlVbKcFf
	 YuTqe82J/6YM+VWi0o2baAOueZNB1CQxHa3RTV7J1cb/2y5fp/Az2S8+CaQvqhZ2Tz
	 txt8JPR4klyzylqHtv587f/WigqQYbshez2GVAC8EvxylGjIWPpwBhMJ0BcDgohkcI
	 eJCGD/C4TYtdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE38C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794545437.13522.15128600999794473185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f938417b82756017458cd240b6a219073c20ec99affdae5196ceec884fe690
Date: Tue, 08 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667945454
