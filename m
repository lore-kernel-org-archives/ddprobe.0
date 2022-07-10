Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D5B7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657466812;
	h=To:Subject:From:Message-Id:Date;
	bh=aDlZ+CbKQ/rGO3U4Bcs/8Smm4V7qKguYbHWelu+6l+o=;
	b=V6YbsgTNiBfC9CTvKHhWy85GZry1/am3cUnAfOd/UdGiZ19Wcxu9z2oHcZrNoVUM
	JczN3Gh2mwZmDIwP4qm4lEeud33zzoF3/QU/u6kPfYh6bUptAi4Nwkb/pYMjGJ9n+3C
	aSjbiijE1HKRboYDbvSjAhM7MlxDmyedfnm4wc5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657466812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aDlZ+CbKQ/rGO3U4Bcs/8Smm4V7qKguYbHWelu+6l+o=;
	b=Lb9QBJZrmvKmDcAA1OrHZ5UK3S3I4fYGJkThEfD9VST+GC/AvkSK/qgnrf2gRORo
	xVYsKsDhC9i7StDVTtCY2uFaw4NEC1jb9WvFJ10DtYx+p8xgQdFo53l+EvZhlgYRwQ4
	vqchXCRtzcKI6OgiPLlh/QSXYNgiWld5WadQ+AA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8b877a5-da23cbe8-aa6f-4561-a82d-8d4bf2b03e6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72bf3dba966f7edea8fcc71fc09f83cde66f82c6a5e9620a600e7b994df16e5f
Date: Sun, 10 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657466812
