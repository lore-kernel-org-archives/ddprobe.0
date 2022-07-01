Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A9C3C1E
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656692212;
	h=To:Subject:From:Message-Id:Date;
	bh=rR38mbjUHSNCnmmjNIeeSzacyWefcFSJkfzt3NmMgtU=;
	b=O6RlY61a931HYOInvhdjC96hahaqIJByaF9idmF8UcK70+mrMFijnxA6Pwu8Wpyt
	RM6axcuaxuL6Cs/0OwGU5QMqL/bFUXyyQInJYylIOEQKe67SQfN+BEJ63LRoAR0/wsP
	gt7zP4FmVIBOdrPCF3Zk9MicrZ6IoJDYwym8OYf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656692212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rR38mbjUHSNCnmmjNIeeSzacyWefcFSJkfzt3NmMgtU=;
	b=RGIiz9XbPJLD+LZSs2gZR4sIaJgsUBceXlAYQjzsr+w3P3PPzh5nzuA5jWMeTxDR
	A50lQM+UcH1smWyOTafJmxjrEzvkgl/GlSryZ+m3ewByDO+lnv/ljIsfZVokkXJaKY0
	MLiBQJd6H1CqvxohKIySaPsMxxlUj9aS19GWj2Pk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba8d0285-b0c1b7a4-4096-443d-8903-bdee669d3ea0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88dee8b08a79e463c63324ba3a798ba85cd12a87af84677ba7df7c35809a6437
Date: Fri, 1 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656692212
