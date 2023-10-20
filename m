Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D1F125BE
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaUx14hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B371AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697794096;
	bh=On1RpuRYZ1HdMKcv3J6L7zWoTabrjGQfGc0+XltQC+w=;
	h=To:Subject:From:Date:From;
	b=AaUx14hb7owGZWqtbvbItE+DS3VpZFDaO7o1rca3FZocpvwpnGwU4ERLB8m7YvdyE
	 F3nDDffyGPxKjMGxRfcFypCwdPradGWEDCFz6Q7X/EMKW1+o2ti+hb6/XWtFrm3DJE
	 wZMvhCOufsdGP2glK6CuYDEb3OUUMed93kJ9eBX1InQdhoaPN9PAbXT/YqqWitiyXy
	 EDeuv/J2K5abQ2eyfCpF5oWfuSjevm3CeUpZirZIAKj5Z2yintWxcYcqOaKX0TTyq4
	 tBoyO09XxksZ1aHF2fGvw4sH8i+gd7IDKBm5W4x5ythYDK+l5ulzPCzWotUUCmQ6lE
	 imdgg4AURbc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78410CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169779409646.21385.16711202168618685844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb940144c49ec05190f24e6b222fa56cfd36f28309d8558be9026a60bb7c08f
Date: Fri, 20 Oct 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697794096
