Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBCC7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659364852;
	h=To:Subject:From:Message-Id:Date;
	bh=EsmVqtTU/PepBr2nKycsDxZRs2vf6CCPKGivdmGyHwQ=;
	b=YGxnyBdhmR9IBzUl3TukYyvuw1BraAtUh5u/WCyENGYCCoMGRvdO+9qbC76oAA5y
	BSYg3FSgNl06uBXMVYUNJZhgW0P665gFOo7Uh3UPWdRuwi+v8DsyOocZ6DAC0KbaJgG
	LsrMuEARhL67z4FrSaKMf/vVB3L4P28ptHAM3uaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659364852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EsmVqtTU/PepBr2nKycsDxZRs2vf6CCPKGivdmGyHwQ=;
	b=Gd4roVvE9zPfu5ojUXUJDi9lFSvFUgsB6SPzAgHnMF5Oo7D4VFfTzhenIp0m1X1u
	MbR4uD2FxYpO4yL0ws675ZjZbWeNvblnOCUhzMjJ1TJoNvjB3gPWaxn9WRt/WstT8Cs
	gbCqCrVB28fSe/Wiy9JRRnj+QqawSLm0dasxU56o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018259da4342-79429a7a-a27d-4f4c-92ee-763d049bff7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c319eb33c4a9666b1ff2e1db9833ed0c8eac3821bce4e34ffef948c03706783d
Date: Mon, 1 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659364852
