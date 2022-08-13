Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B07B211F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660409452;
	h=To:Subject:From:Message-Id:Date;
	bh=KDsVRN0hW+mldVChspBevXR6MeE+cKuSYYYsACxO1yA=;
	b=HcP2VKw1pRpKjxyA8I/Zw55kq3SvL4k/GQtLeQb2NNwX2wWOh8T2WN/HHk/1sjQ5
	NpZpj5td5rnTENWwcieoEwk4/p8WH+MUXRdHeCqR8CfHex1LAjYiHlpTD5sl1a3kTyg
	ckrPpCxh0ZUmGdx8KUa7rqncbnDWDbXeWaHyhzAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660409452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KDsVRN0hW+mldVChspBevXR6MeE+cKuSYYYsACxO1yA=;
	b=EeVWLuI2/ZmBuwFyjze7QjUofcHveIELfzrTCPChfMRd+hD0wuxpwydDUle1CWzh
	nQPH1lFOaC0WhI1zPSYSBI1IG2Is9M+EIkFJWJzN8E3gTR5/QLfpcv6Oa6E4KYkfUFF
	1K5LWjqXuVKNKHoBBTciRCFgj5edjvAmONJgYyeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182981d9849-39f39cc3-659b-471c-b21e-b8dd4b751fa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf16c144c8c8d08c3a2f93cc4ca893bbc7643bc083c424464bb73cbff7765260
Date: Sat, 13 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660409452
