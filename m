Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3262A28E1
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657702612;
	h=To:Subject:From:Message-Id:Date;
	bh=ZjywXAd59127e+s7TTs1QeNWFUtuYq7PJukE8v1okkg=;
	b=UpgHyhvxagOg31PAWqZDm0Wx5wy0iqhWCFA/cYhNv1WDS2GmebPDMo7XFnJk2hSD
	O/VaRWz0GEcy8jJBuSDJOqAmef006L4G0b502WhQsiNyiiwDPsp1rEdzGCCC+9cfjlG
	wZTuJG9DMSpurmDr+h2+6CS1I7K95ZJF1+VNtdW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657702612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZjywXAd59127e+s7TTs1QeNWFUtuYq7PJukE8v1okkg=;
	b=VsOdLd8A36he3jdWQ/qjXCDtt9vvZcDcECpAgVzaLUHJOLfpQBxJTUi7dnikpm86
	hM4pXINYBg8YoKBP15vu2u5f3TnYhA782aCJpezIKL5sGxAVERiub0TRYV+fOz5yD/I
	shTXAsX4saEGNTvDHYnixEabfAhpMb1f9dYia0To=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6c67d45-805aeaa9-b8a9-4003-8553-8b15a87f91f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0229d04b8b2958edc7ae4c2d6365228eb1992a40cc39d97cce78479a55bac9d
Date: Wed, 13 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657702612
