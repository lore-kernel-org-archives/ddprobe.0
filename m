Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030C47A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 11:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654775099;
	h=To:Subject:From:Message-Id:Date;
	bh=YSt62mJugOhd0iCTlszQm7kqtaLxiK18tLXtoiNZRSQ=;
	b=Snwhtf5m9M/KNeyfnxaGBwrplNdmxhgwO5xuTk3n/luRgtUxoKanV+fAky+jsaJf
	TH45b3qQ+x83tzeKh6vVo6SQ06O2iZiJfvrwDEDjKhUpAMsaV8lRtCqj++t5vGs1euz
	lhTg6cDloS0070KjiMS0jWYkMWMUhjNCiQbANZu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654775099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YSt62mJugOhd0iCTlszQm7kqtaLxiK18tLXtoiNZRSQ=;
	b=ev3UUtvjyBGlAPieNlAcXH9/4c9b2VhZtyapC0XSGHfqrkYVTjN392Bb+3bEJZ8u
	9Dvws9imcyDHBNjkPi2MbbAKBIw2I1GzCF4xxt7rT2D0FAN/41Aqov2Mp+F6VLXBF/A
	lxI/fe9MC3pmGyEjXxgFrskx6qCZ+OdPqxUVoPjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018148482f45-beef184d-42e8-44a3-ba99-dfc025fd5b54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 739bef626c8711ffd10da1db523926f79a3aa2c494d7d479a8207beb5ac82d78
Date: Thu, 9 Jun 2022 11:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654775099
