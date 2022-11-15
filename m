Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD7F1841
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D68EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668501654;
	bh=cOkySNlsclMfz8C/eeT/lky9fdp1Mnblg7NL/+o+o0I=;
	h=To:Subject:From:Date:From;
	b=hxeZkv9tzF5JuDtpN10B1Svit2WiSV1juNc2go/7dCOnVGg2TGsD1CN4AOKta9hiy
	 WQDUso6Buz6YG7K9eAF0WT9izRIq43JK+iriXAbaaWaQqKQSlcamZRa4dEwLX3kHpg
	 sS6dj5QDGfRgeCFYeJhX9AaK424AAcL68mC1YujIS0k51cG+x4ShFH/NqvSayzYv2C
	 TRVAvmWeuNprT7wc+WyBFUSEFlHMGuCIw5WmOgdmRjyWH9Gwyw+SSNVooYt8zbocqi
	 XLhnBPJ9lCP/Uf6cUVJjaYrGDxUSuDdawvqi8Y3D4/b879EE/m7sbAv/qVAhIBAM6y
	 cpnm9EKAwsfHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E83C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166850165439.7586.5132291066329794121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2faf32a6bc0a573eb2e98f6afb394324ff2e8874c9f9ff24ab9cca7d45c5726
Date: Tue, 15 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668501654
