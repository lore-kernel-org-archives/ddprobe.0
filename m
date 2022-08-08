Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD863D60
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659972052;
	h=To:Subject:From:Message-Id:Date;
	bh=wBus9RIcJLq2EWSB4n8052H2RlC8B1hAav+MfyCos4A=;
	b=GM5UAcjaOPlP16ZURMAXxPn+tvNo3LUYYH9k5ObnRM/nTtLziNKaL0gQkF2Bz4pL
	FMs+pNzzQ/ogxq7Mx0miHeIILCbYfFNJuXOQhXq0Wb3mmwvDyc8aEFzXe1X+WKtpE9P
	6OusdI4Nii4SqUpL8foSdGoKwsyy66TdiE+cZTPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659972052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wBus9RIcJLq2EWSB4n8052H2RlC8B1hAav+MfyCos4A=;
	b=HFY+tj+I1aJHvN2Qrinzfkh6PVj5ogG/p6cHiWC762eczjRAoszXnPsOX4or/8D7
	gngNQoane9GxoZeVXrsSsPSOVHZL2geea0cI/pgNLV9NSEOwXuttAZmIVBQKNMFK5yA
	T0lOVuG0YmN6qiPBY19vCCkg94UmWQDg+++DTyEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e0b6681-2c0cef77-a6d9-49c2-892a-9eb43d4a95f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 503da19994667b36d64f74967ff5e97b6603024a79d7ed3c207cb58183ffce55
Date: Mon, 8 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659972052
