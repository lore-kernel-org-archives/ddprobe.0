Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696701360
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659096652;
	h=To:Subject:From:Message-Id:Date;
	bh=gIDZ3NDPw87cNdAvkFBOQtk16V1sc5ENUY08+QgbmXs=;
	b=c8WlbuNl5nx4N9ccheWN5mtdkBQKTWVFbGUJ/2ppYFi+20ts8Yb+FmdTrnlS7cFE
	j/K2oNX2iZb0DoBGOqhBQEd1+0gDiOQxf5I8RH4NDA8MsG7g0Gs4dOVZ/wGxWCjTa7P
	B9PiZIhF50yYtzdSmRbimJDe0kwdCOzzfJh//kVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659096652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gIDZ3NDPw87cNdAvkFBOQtk16V1sc5ENUY08+QgbmXs=;
	b=e6dBPOQj6qsmz6qG6MOt0nztuXBcp9MWXDGrXr7Y+GhiQafHAsoFOLaSQwk/Br2T
	n+pw/2GVn1Cia/8sQlnv5xvOzW5xEFeutu4vyopWRhkWHlqYzIwflXVdLhlfJKJP1mB
	eBc9FJGWC/iiQpQpD6+LedP1miaCH+ry4UAyA9TU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249dddb21-546b00fb-b520-4158-b425-2719039818b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d159062dc3a37f7b7a747f9c182b4ff9013832de49f13776238c6408f000754
Date: Fri, 29 Jul 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659096652
