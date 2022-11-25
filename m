Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F4215B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8EDC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669340454;
	bh=F3qkp4Zd4p9xr0saX8s95Fx1fVsnWPKWV7aLRWxWuwE=;
	h=To:Subject:From:Date:From;
	b=G8G97pfItBYlOExbWPCCXy4ZXALWPWRY/UcA1GlD4/X444MJM6fFZZweV9dbjvDPA
	 rNiaSewBTdMumL1TbCZYXE+MHD6myvYrTEkpDov6aTOUhk7TC8ALz9rmrB+EIet0ze
	 d8HBJxfwWgcM4EfIcLq4v2oIGRZqTXFBiMPqRzimREloRufwMFBzbBKpMkTAF8+FVN
	 /GDKSzbIiVnyBQMSarT+saztzqXhkt0ogF7fbqFLuYtumE81WfwrvMvR1IoGFzQvli
	 XqLr7YY934e/I6aEPCv34d77Zv/4/oUcxA17Ih3Oo2SfcB8zvm+YnMjG2FQbzr0z45
	 vFafSEUW0nnbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56799C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166934045434.30486.14380116358014174084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358cfe0fc50020742c56e9e9d61ceb2c52069b435140ecd2798c2bd07d45c85d
Date: Fri, 25 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669340454
