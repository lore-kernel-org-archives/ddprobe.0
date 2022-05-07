Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1577F7E2
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 00:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651883878;
	h=To:Subject:From:Message-Id:Date;
	bh=GUvQStXLPj5QwB28vdJD6PdLGBgP6NQVmk/hC2KiT1k=;
	b=Imr2cW2GFAcnzH/kFAXc8YvMsCc61sUiRCaxPmk5QGmZr7FiszlXxi8YImx9cg18
	DUA8RROJET9UK3bTqiSSZO3gOQl8gZiZGOSK9mP26nR7ei9Y7yk8ykW4Jv14Q+6yeVn
	wT8v1pxaqvTvqwaIW89NTldc0UhaWpSWfGQklbT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651883878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GUvQStXLPj5QwB28vdJD6PdLGBgP6NQVmk/hC2KiT1k=;
	b=Zul9eKUDAPFJHiwYdiC280qokvEvckih0I6+RA1QXt/VpZqymapR/+YAhw4fnrfQ
	FjIc4VEGnpoxykisznN9gM2j/A5cRxjOiRAGPP4iVCkoXJ2u0nYqKQFHH/xXosIuoOW
	g0kamRigPojQRmPFPtVMkSBjaFQmmDN1O5mlo+1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809bf3a7a5-d51d5ae4-6194-40c4-9bd3-18fcf3f0c0b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c3960a998c4479b9229125e18b093b3a449391f87a5d4a7cf87fba46718f0b3
Date: Sat, 7 May 2022 00:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651883878
