Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB3D4A83
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645978885;
	h=To:Subject:From:Message-Id:Date;
	bh=LTT/we6TiqJXn4MH/ZCb3ACjSMDBHWDNI67gHqHFSzg=;
	b=eXgwot9d7CbgxdbYUSCMCkN3bAgB/GWHpNeWujhlD1nMLpY9wA3sZkC9r1uHpdJT
	XziJQUHTEEOcqf9WPMI5nCywXyfBN+EKibEnfOh//jELcJ29E6ZcjR17L2+G1yM/W10
	IweiJz7iMwFct2Ma5T0DC+KPPFMzxE+RHmYyPBUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645978885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LTT/we6TiqJXn4MH/ZCb3ACjSMDBHWDNI67gHqHFSzg=;
	b=DiDO1CgcqRa3TkA4NEakJ97HUpZd0W51vUl9H82783U+dvCS1ZuIuTWsdcTPQaGp
	tzEgM4IBWgRuy35zlAMbgC7I4CujdVQmIaL1nhmGhZ55VJAeYCx2nGMgryyyaWEeuPB
	W4d5vejxrFPDACac221d4hMfNKsRe2S/oOM5Vauc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bfc9ac5-b78ec804-d960-466e-9406-b92dd0a1bf27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5dcf5a2959ac74c7f80fc819485ef4531eb5e3834edc1c2916344dadca240e5
Date: Sun, 27 Feb 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645978884
