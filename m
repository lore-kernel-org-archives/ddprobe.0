Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C731FC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 19:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655233619;
	h=To:Subject:From:Message-Id:Date;
	bh=LqdSiDtg3IZpfHjVI9M7vzBzVk4LUS8FkpmuEMpbJXE=;
	b=iqehz8E/hYI/qYyMpFNEq084fIJ0LDpOFAHBprtRAXt2XaXPtzzoMDG3hjCYD3HX
	zl3EL/gPznfYS5tLo845Kfa04AeDYNIKsj1HYLeWGxHxlLeUYDEArQuyuxgeiXeGi5B
	wzn8sGEwqF8503AuCFMUkY1xRhens4vfZUCyGUr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655233619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqdSiDtg3IZpfHjVI9M7vzBzVk4LUS8FkpmuEMpbJXE=;
	b=AnjWJHGnjm05YIipn7d1PNxlocWJfT4jkXANSUq2xfHySlqW98a4CDJNCQPRumoM
	sv0CgVbIMJSbzRvonsAUEXOhLSzp9ZGj8tvWhYDb1ivUyeDllZaX+oKUPduLuzBa6mp
	a7Bn20bs1GsU5Lnqy59lJ2CjntEegOqSTsRBo+Uc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181639ca547-eaf8d64d-9677-419b-a2ac-d775f97b7f4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14929918b1898005aaf39628ad481928f55d887e9a2e3388e3c67671feca4e95
Date: Tue, 14 Jun 2022 19:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655233619
