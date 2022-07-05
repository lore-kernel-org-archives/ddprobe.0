Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59412602E
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 22:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657061212;
	h=To:Subject:From:Message-Id:Date;
	bh=VDldrhrrh0J7vlpHbws8Y+WFo8fAW9AF/swdS6Gvamw=;
	b=RZ2wfp37/SCW5N4POw58ZSyMvN+U2XVWc+LkQdDJip5gl8/btynM71HWQwrSQovj
	pF3ija1dRc1RKUFEBQWo5T1FOniXKt6tzIob2xqATeeE9dyOGMcGXU4Fck4SeaKXOgi
	qCSpBz29PO5KBWA+LcHGC3F7HYsMw+G49tGrQlSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657061212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VDldrhrrh0J7vlpHbws8Y+WFo8fAW9AF/swdS6Gvamw=;
	b=XJsijWS7EaQXFpcBHxPnnpZO39kmeGW3PDqQbnJ4ObAuhetOaAA18CK341eO1mBK
	hTyIqAYaWGS8UNrTxKmLLoqoIbUg4iXqQtF0n7iLdJ8nYR6TWkVa1RSjap4R0+6QY2N
	LsJd6YFMol4GDcCAI52JTan/GKV7OsdkHXqHQUtM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d08b81a3-884f16d8-7879-48f2-9b9c-c6a04927955b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b342307d381d46061cd795929f885f8368976488f8df1e9fe7d958f2cf53354
Date: Tue, 5 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657061212
