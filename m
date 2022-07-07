Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEBC367
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657164412;
	h=To:Subject:From:Message-Id:Date;
	bh=ZWCrH1Q2vYXuXYf20HkZhkntveD2XlVdSrybR+ncFog=;
	b=Sfw+E1VfOQvMnHPFKoBf0psdCYveaKt1Xw8JsAHPYrP9ybV1egl3g6zwb4b0allg
	VwFhkS8GiUjwP6o1TtJFsAMh3SlCeP1aYxh7e9IiOcSHigNSokRSmadoiZiTMWRo+d4
	uAYu0s1VoNVRWnlzdKWs90SuYgpv4XtcKtkZ+Fnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657164412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZWCrH1Q2vYXuXYf20HkZhkntveD2XlVdSrybR+ncFog=;
	b=MMK5Dkcpzqy1KdmtVNQrJ+8pNCAbfXdIoan2/uxvfjI7PycjsB29D4Nm3Y0LuPxh
	I5cgPrfzrYILUe0T26CBEQHFOVMB8IbKEt1NdQxc0ez1r2Kv9CvyqFgWBR4FafrUHSg
	5ndWn5BUOM8fplQ/0vs3ixhoCHGBv92kivCLajHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d6b235e2-a2f2cef4-040e-4535-b532-f7c0925abd05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21bad2278e7f26d81753d357145fa5966f07ffd7d416cfabf4356e52c7e652b5
Date: Thu, 7 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657164412
