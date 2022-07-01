Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C991850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656678412;
	h=To:Subject:From:Message-Id:Date;
	bh=maacwVAx47chtvlxQ5r5bn/8aLYbw/qaMTuY3wv8gDI=;
	b=RRM6JG6FgWW0pQDjTXZ4MOzLh3IP5XD5BKcfQd59S9GJTnG8dbsyXXXdJjsLU40c
	G3r2QDyYHae8Fo1GCVUEVvs8osZoX4R2EjsidNh8PSDHPM1TefQLddhPsxVJhMywzMe
	sqVuarW58BL2rB5ly8/1NDO1Qp090Furb8WDgdfg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656678412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=maacwVAx47chtvlxQ5r5bn/8aLYbw/qaMTuY3wv8gDI=;
	b=NP69sj7Ae3Eo49bU4vkscGOUahED0s9u5gtg2a1yHO+YzwJUV7l8dD6H/V4QG74E
	ZgPH6RJqDYvERXIHcDJsDXcQJth0Hrmwi8LbVOI7S6dER144rkKXgWFD04ZM8YVv1ml
	mDDe2UluVvCgDWI2SRUeDJXnVC0vSNXVxCywJH+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9ba7007-6f30ffae-9e84-45ce-8c1e-037a3a28cdc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96931bf4bf2ed71a97af00e63a02605b276aa20c421dd2c8e089426a16bddb0f
Date: Fri, 1 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656678412
