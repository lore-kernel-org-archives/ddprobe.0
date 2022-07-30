Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09461854
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659142853;
	h=To:Subject:From:Message-Id:Date;
	bh=4juywu2qOCQfna8/NQ/6YFfuwkbIEQcBiOv/9jligF4=;
	b=ZEq5luS7l7SmdxpK3exQB3S1v0Td+DQT9qt1GqVtyOq9nMM2bFIc8IakRxNC7tUm
	JPYZF4k2AFQKZh8ewQlSU/evDsvbKkBFrm6f3wT9RU5bQaPizn3TvsxN8rQ2tG7pumR
	XAhWcVMTg95axPz9E2OtMYPCp+GrwsFJK1S+6RRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659142853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4juywu2qOCQfna8/NQ/6YFfuwkbIEQcBiOv/9jligF4=;
	b=j9iXF1XBiQ5bmmC5fF7I3KP0fY07aIJ5lKtiNSafAOZDnx7acKqb8bJw2Ncv01bs
	FJCRrAomSX9JK+EGbdey5y6N/9JSGsVjxhB1jJmTrV/yl0+/vLfdWm7J9B+zle5Utio
	QpOTub4gVA5FjgapehadWffonvPt6F7RRGW0MSAc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824c9ecfdd-048271e4-0d11-4684-b963-20728c613412-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98f64c98b52403ae201a818c07d4733c198c678fd9bb919ae0d2ad35d1650c8b
Date: Sat, 30 Jul 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659142852
