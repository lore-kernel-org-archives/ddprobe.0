Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CC323C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 09:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652173259;
	h=To:Subject:From:Message-Id:Date;
	bh=P3ISqHsrQHCKjDv/JyYaZrBTskHrXtb5ZMIrHDEz0V8=;
	b=N6zJ03ree39NJwBpYaXUE9uwgMVyQ4xWd/XotcJCddwbfrHAxOR4e63o/ZMyX1XW
	GdS+14xPkXS7QD+FD200UeiUmFcmzePPh2pwXNh0PNjhNPsoghtBb5k8ywjjZwe1qRu
	wIkmuWCGWAX9r7pnfjwVJ8z3rYjRaQcDaGNWbTY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652173259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P3ISqHsrQHCKjDv/JyYaZrBTskHrXtb5ZMIrHDEz0V8=;
	b=OXXFHlvA85g9BaGQoU8O0seq2UmrnJGYKm2lqsKxXh+OqeX2v45V6vNbNZT6W24d
	WkO7mtB9B3nFYHMJ3i7JViPbUEbCPeu+0sW0yv1VX3bfMizlaADMbJMDNyWvyBgFinL
	485bBIJMIvts0SpipfMpYEiW7rKi1FG7aOA1OkOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad33421c-222ab86e-47fb-4403-a9e4-aa284ffe7ed5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26633c1fc11f06e6a9f63a2b8db29b085981618d5710c1510a64238667ab009e
Date: Tue, 10 May 2022 09:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652173259
