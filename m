Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6AE80F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660397452;
	h=To:Subject:From:Message-Id:Date;
	bh=/dHT3ntdbYKg4sK5NBdRjg7jra2bzmq4dDnt5rqIXyk=;
	b=gGCKrFFyWEsWCtWxDI0c1Cs1w1cngEY7oOjYDHh1m+DLmPaM8kSEzTk1aKZ1XWu0
	pntadI9lGvMDP8glDcBMj+jeMuPStzrtfvAMvV0Z0PgeY4dvovCMo7veMYBT7RD7C7F
	MG/flDmexGDqJNcvtpXdsRJrfLtox9OJutk/LUFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660397452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/dHT3ntdbYKg4sK5NBdRjg7jra2bzmq4dDnt5rqIXyk=;
	b=dwPoQ3RO7XybsnN5LVnwvvbu5s7oaFYjhs0CladO8t+kC661U7XAfCHQiWw330ds
	lNOiJ696RohVJpcJS7eRlUTcwKtAxB+7V6QWSpkUVh2B1RIdp5PVMtEdl7LILzbzVgr
	PmZCimQc/2ZFrhH8pTfQis5dzoJoEm/5siRt3tb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018297667d0c-3d4aabb6-ae18-4007-bd4c-0ac20b71a23b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86b99053d14f7a9d2c3240011205151b66c19e08a8a16f5a0b887694c3eb4a1e
Date: Sat, 13 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660397452
