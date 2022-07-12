Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272374681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657655812;
	h=To:Subject:From:Message-Id:Date;
	bh=2PKUOH/xugNKropILVprF6tLqqIMfwgk5R6GUY3USkk=;
	b=WCy10houclurv0l03X7XwQt5bq8btkdeN/ThDEh0aovddqfpakCRhQAacVqQ7rBv
	+Zm+PCKlKlf7TLO6p508pVQlBDummuwLSiUAZ8NYBcwz/WHutt+pzcJEb6AePtW2tgJ
	QuRS7SCrbZFBb3WdoUYKejqMTYpPVaV9CqGACoi8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657655812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2PKUOH/xugNKropILVprF6tLqqIMfwgk5R6GUY3USkk=;
	b=Et7eosVYOBSRkJMdIh4TfHKHrp0fLAQrneSPqxzxzT8XFRLDiQKzPi8g+ocQkKHr
	D3ipU4KwuSC+WYUZRe3n3HMlDWrfrGi4Buhb4Kxrjui2EIL8WdRaW5MX24XQOvwvfPh
	IA5w0DJTJP/vrRCttp6L2kWljnD+0fRr5U/7kbeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3fc60fa-981a4384-387d-4022-aaf2-0005850b010a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4915f483af6cfc3f715c02e92ced1140b08856323bbb4f352b6d16fd879b3097
Date: Tue, 12 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657655812
