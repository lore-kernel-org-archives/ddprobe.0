Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFEE3D76
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658773012;
	h=To:Subject:From:Message-Id:Date;
	bh=6a+IT/3seeYgSGuyPpXUJANTQi+RlC7qN63fC+aXO0Q=;
	b=BxdWut4uzW/kA9srGQRzAnNEYfUl4126eNFN9nggRADDftfBXxAbrGk87A+bW7Eb
	l5fw6fsr9BF0RIaZmdUsEJF1IvrTK5P5IA0tFvXumZERh1REXJ2EmOaim2wITK1MRaj
	Z/DXf5hR1vfh0CcDVLD4PERf2mvs7bAF8w8e43v8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658773012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6a+IT/3seeYgSGuyPpXUJANTQi+RlC7qN63fC+aXO0Q=;
	b=dyGFN4HBG80s6X4/I6Shm427aCp+p2bdtXVA38tUfRI/zrRlzE6W/Ip/xHkIX0kn
	1zLLZwkrJFY88Ff6TRxwGXE1AJodG+nOvjK67f9A+bT6/kWQbfXRei1lQavWdbPrBPV
	NE8NP+vSDWLze0B44wI9vSh4rmvK6tL4rmxgCFU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236937f70-5a9f6168-097e-4e98-857d-28856e626ac0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bfeed836e79b8cb0cb802f8f7454ea4b55ffa2996e7474f3e5f3b641adb1f67
Date: Mon, 25 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658773012
