Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA4D7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 06:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653028919;
	h=To:Subject:From:Message-Id:Date;
	bh=1DFi0PDIheXWq0Uz6uYDAWW2Vp4PPEDj8u2JRfNVhBQ=;
	b=TCWW2a2Iisnw9D92/BGkPtOhVuwPnCByz1L+agCAqNf8HVS3/sTOgT8Heb7Zj/0Q
	eLdHXsd1vWRBZ4p50vDP7yexy0x2nEsJoShgO9F+h5yzLWgc1NlT27Z+9w3c/mEphm7
	89D6bBfQH2BgeAMpblC3xaTB78dhoSFcx66QMBH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653028919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1DFi0PDIheXWq0Uz6uYDAWW2Vp4PPEDj8u2JRfNVhBQ=;
	b=Gy6SEIZw+WzsKcgW8fOPbFI8JNTm7QeiD2BDfHUN2krSSo7J4WzorP5fnPuCj2PH
	C7EhWkmqS72TNZm6G3pObqylraE5NiUYSkh/9Jx0bg+YzDsywwZusxHHfa+GwQTkpyp
	mZkpwmXzjw0IF3RnYYJww564kVoRVXOqpCk/VzCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0339814-b8cb2b31-3b35-4095-931a-f67e505a8d3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 763b527f538b7ab6b97ede0c5ce4e06eaf4dbd52545ae6e9bf01d446fc33f33e
Date: Fri, 20 May 2022 06:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653028919
