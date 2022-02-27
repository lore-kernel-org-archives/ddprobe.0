Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B877A7C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645942285;
	h=To:Subject:From:Message-Id:Date;
	bh=6ZQ49pzUOWwNtNbya40GI21bIOIJP1jQP7fXx2YIYSE=;
	b=HcM3+dol1+OT3PokOJmxCUYm8+n9+uj0Pe9vqPzkarP339t5o49+LYsqNlD5UOXK
	sorYAVR1rf9YUsgM7GO6Cutg2mxiTkP80gXQZx7B2R/y8lt8yNfqjSWp1ZJyeYyOcUA
	/qsk30fNZXP+8z8MhCjmKDWUz3owI3lj34DT9+e0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645942285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ZQ49pzUOWwNtNbya40GI21bIOIJP1jQP7fXx2YIYSE=;
	b=haNBZ3lIfYnDtaCQAT+2HbAdwcfh5xu+BVnGnsxnRB02kwkn78t2DQmbz1fI8FUg
	kZjPwDViCcdtcuy3xHdEZzoXNq7iFDQqF0rfgegz1gg2xQ4p1DfyNFCXaO1A+ldQTaO
	uhzsaUekDIAmCLwV5T1+PXvtSkUlDQZOnqO9JS00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39ce221f-cacfec91-9b8a-414a-b755-1f3b55ad099f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3b8146bfcefdc071ad0dee7d4cf28527606acba810388ead3a4da76b91ed244
Date: Sun, 27 Feb 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645942284
