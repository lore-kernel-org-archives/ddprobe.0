Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68EC2C9C
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657790812;
	h=To:Subject:From:Message-Id:Date;
	bh=fqYxsMMDGu2vRWQSR/a3Lm6bqjUQe5Qeiuq1U/xX4zc=;
	b=HE8pW/GTIgFdrbGloyu5q4rvjlhSkCOeFZrFqGk9GLf7ebuJSbpqLscUAv+vCpUt
	xec0fuFmu1qswlxPLKmpFDHgTuW985yHL5fCpIzWTxwP14jMh3xYt6mnhn9VgURn0En
	HCGi9tOQRtSGz0pkso4nuuH2LvVVh6qKgH9FDBms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657790812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fqYxsMMDGu2vRWQSR/a3Lm6bqjUQe5Qeiuq1U/xX4zc=;
	b=TLJ6UuKfIlmLeUWXBSDBwB60Rk96MP4a+lNJDV0oZgkdqA1NyjwuUT8Y7WtySAlO
	GsVFo4fjf5+dV/9hWh/YBwXcrr5z6/dHkinS0WTpJx4E1Hv0Xy9P7IoaMPmuYV6+WBw
	OvaIMvTzgMYCUm2dEPmSk30hNd8jyfWspBSMTFG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc08507a-ba79749d-a34d-4aff-b4a2-c4d707446112-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f594b9a8371eca35b0c192d22cbfdd4d3defbce6d3f7051c32772fa3f1f870a
Date: Thu, 14 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657790812
