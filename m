Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE53F7E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 22:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653173879;
	h=To:Subject:From:Message-Id:Date;
	bh=Wg/l1Up35hVaOnXAjtrSaws5UB1mfefbsnxR4Q6PUOo=;
	b=lPzsWVp/m0HWFigqBzthDri341+eKO2M5QyvUpLcuFtJ7GaN3HTLEIZOB9kEkiFe
	iUvCOdZzzbt3e1RreWFu15sh/0j7XwPDL0w9us/Ag+PlcEWjcT6D63UsIYEhZrWtWqL
	OK0h7G2/UYN3xkPkbFJzI/FkVtR3NlRFNIHRKuPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653173879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wg/l1Up35hVaOnXAjtrSaws5UB1mfefbsnxR4Q6PUOo=;
	b=eme2Yo6d1oA7YyUW/BcxjN1QiMnKzkWmFlUHdXYAVzfTZ8bQzQ/FrQbb63lfHxyX
	TROBWI7m6uZuKvySLQv9hWh2EcEYN7mqqgTwxeuW9pKbfz1PNlKB3hgLf57l3dDKsBg
	YnYUTbr49hnZvyy2eCmkXVrTyua7XOlTdlXS041E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e8d78226-e5947354-8184-4b62-b5a5-d37579368e5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f1b1017c0db30e38e9c013a7c870781eed461327b595b0795b34dc38f7abdbd
Date: Sat, 21 May 2022 22:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653173879
