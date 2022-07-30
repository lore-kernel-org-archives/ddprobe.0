Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577653FF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659215452;
	h=To:Subject:From:Message-Id:Date;
	bh=+SrCqo8G+GbGTvuBqsnR86ze1Tcpi5g/jQSoz+IsyAk=;
	b=ICr41q6kga/52SG1o5FQs8W1kM5VAcqBUv1GOs43A2TMFfMPjD7xPpsHZ3WNkfoR
	rRsqvkVrWPUxy/wFfajOZ2usbWnmo9z3Q8dobyQNJwhOOI3Ee3ODTvMxsA2cda0wRDZ
	yVfJMgnRB2nSl7EYz4Wr41MYsD2JZpmUt2Kb2gnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659215452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SrCqo8G+GbGTvuBqsnR86ze1Tcpi5g/jQSoz+IsyAk=;
	b=SO6mmElFKnPk/i23nrnTEfjyMM26K8/aUkoZ3zocl11oLcc/bfExM5ZAWrKcuqCJ
	EuVvWxL9Lh+vv0t0OUjJRtrL7bS15ufWE+LsSIey0K0L8qXQKBXO9D1l+2TMOzAmUYA
	OUaNk0+1MVww7lQ9+Z/v+ZMxtUZVqf2/pKvQMWtY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250f2999f-b1f81505-e1d4-45c1-9d30-5fb434358810-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab07b48e375b42210ee07e2883ef602eb9a2bf6938e525429d226f1ead6f7380
Date: Sat, 30 Jul 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659215452
