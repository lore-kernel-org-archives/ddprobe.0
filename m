Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDF233CA
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88AD5C433F0
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670518287;
	bh=Tir6USBn9+srQA0ML5EHyxGjVl329zB2fdCyA4DR3dU=;
	h=To:Subject:From:Date:From;
	b=mbSukZ0hIgdH/++Bxo9nf8PX30tqxPA5Grmm1nlIcn9ImMALEW5IgQdpWxDNLDV76
	 J2upQM7c4jseqLzJ6IRX4vPEQ4sIs1N/cp77DMdEZ2EGrf45/8bT4BH0Qk/YQIfbsQ
	 T21uEVcdTbqiPHCb3ZzSryEtrg15JXjl+UpzqFbVMWQg+IW3SCSdRzRZvpB7O6QGpx
	 xdk9aU8Zh7UWcvQTTkOs67v7yFUSdGyHiqWJWx9ZEIcqYj9YJbNFvyzRXkQ5DRr0jp
	 ZSUyMoH7N/Fw3YUJtD36bQwMIEF0R7vWJ1qQd6wZZqkL5NusBAznFPN73rLDzu5k+a
	 P+3ak6o1G4s8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FF9C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051828741.11290.13336990496864443987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde583e347559ef5b95a181e593ee6d42d5f477af3de101f064f536981c5c827
Date: Thu, 08 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670518287
