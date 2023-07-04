Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD12620
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 02:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEEAC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 02:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688436968;
	bh=JUxhUIotGc5NZn9rWMX8leO0vrH1/CfAVKKrfs3e74c=;
	h=To:Subject:From:Date:From;
	b=fPfSXqh52Xcixney0Hgapf5gnRo1DeYP2a97IEhKYW5mFQmEeKzJq6yUfkVSCgAbe
	 gvrNJjSUT+DJji9VVKKwRR10v6n6QxSpnMAxqoGpm03IP6rIByklr6sT8LHV7dLUYW
	 XasVDiv+JaYTYtEhE6FY2qiylAZFu23PiE9mxi7jlNNVSAP5iVxay7T85KLTTncSst
	 XSoJS/89YS/ivLL+NyE2LRCgmMOP6fe34A82amUKBHiwFAyJEiVQ0rva+kuPOjs1cW
	 KyoGsp50P8RmqjvnZ/uKCN6IH2tuyMYTib3ANEw/5BqoB4DIRMloyMnEItqIyKheh9
	 OTirqAsA1Q65g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34C0EB64DC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 02:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168843696870.22176.2065012879392842764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bcd9f24fd8761a410d693108bcf0217ef1e86cb996b14564e5ffd1f18bfbc8
Date: Tue, 04 Jul 2023 02:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688436968
