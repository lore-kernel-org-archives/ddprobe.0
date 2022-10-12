Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA9828EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7860DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665592853;
	bh=cncImhDFA6NFur2xdnSsuHEKox+WrHYQI3z9FXyM6lc=;
	h=To:Subject:From:Date:From;
	b=gnykAAaTN1IdCCidcdwofiolI/KJHdsZRVXI4E+etDD07b/VkNm/8MfrmlrY6RT7C
	 hQYcdmdqbo1BoVWWRXoPDHvDQFOubRKVDZtVAtjgsCTa01gd7QKO69nbZaiFuoXxMz
	 5aWf6ELmOANY8KrvNiJFqM5ZJEOPAb4klMEnqIPAWoQX7eU3q/LM4cWtJzhh/9VlqB
	 lUyWX5pCxa0OMlqGS6iujJ/7ijGHq9dIPoGF7MaKJzWzbEHdMlgMHv+sKOFcvwNPu/
	 NRN4ClaepD2bOjDrJOa4r9muLqrkYRUC1CgQzbcMLxDyOVMWiAHHaONJerKyWIi8c0
	 mWoxpW+IvewPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE5AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559285338.2685.8349061422207912645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9b1a22b8880beec1aece113cb513bd4d81ef6379618eaeaeaa5299d64248e9
Date: Wed, 12 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665592853
