Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED8E2F25
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 22:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652566139;
	h=To:Subject:From:Message-Id:Date;
	bh=9juYo3Ukx98QkAyHBA8XvuvynnoC2+GjRKX8miSUyMQ=;
	b=JlKg6YDN2jQRUKO0vd21qkxBGJIcLqbGqT9ynqiMQIHBJ0fat2ccR4RDeVmaxN6L
	SRXcXgSwBjgaobYTQjOk9sUaNxtOoT04dOnoNVXduahi6VNDSO9RWjw+Go15mRrydex
	UgFZSlXKawCqLn81Z1yIL7V7VUSYZKbozHK4uqrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652566139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9juYo3Ukx98QkAyHBA8XvuvynnoC2+GjRKX8miSUyMQ=;
	b=Be1R5DEafdD8zBndbKNef5iSUzA04zG1WFGB0S7R4/z2EKwrDmSlP9sA0gNrt569
	rCxOg472nEjXs8kYS+35YqZXMoosRiLhMjcmM89gKvbAwT/+AOoZYc0aEQxtmG44N+K
	RFFRNUSYEDiD7GMp2rbhm9nj5H07gs58bhql/FRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c49e219f-231c8a18-2c6f-4c0c-98cc-8a2702c8701b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d370e682f1ac4fded621bd84991c5277f9527a881cfa5487a29b1894bd0aae5c
Date: Sat, 14 May 2022 22:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652566139
