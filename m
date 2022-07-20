Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953FA1FBC
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658297213;
	h=To:Subject:From:Message-Id:Date;
	bh=vAStHMBHRP1FR9G3MTL1xxbKFLgESwYuhzp6qU0F4tM=;
	b=VrHv4S+fN8OHg3S3ezNz4RvxnoL/LcHsuCxKRbac4mHR9tKS/8u/X9/O4WSYjsPO
	ZnEYd3SWE5ARW5tPoZGYJTZHoFx+D6KSmhj2UfhB1S0u/2iWCydZmoj4jSybQNIm/nA
	G4No4dv7/ctbnGmxZRSEjP+BLeX54lIHr5S+BcCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658297213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vAStHMBHRP1FR9G3MTL1xxbKFLgESwYuhzp6qU0F4tM=;
	b=E8qA2zq89nyNTGFQ6aUnt5gk6T1UQm+B3i8zxRmfDi/LV6wHeldiN1r4B7YWMP9F
	VD1LYxA9i3Ar8zb/fDWQ2+rBF3hUtqYJ7u5xOlJ8hBPjYmTS8ztX8mGjq5rpBUJxHW8
	jtw+zgLhI/LVujRoOsgb/nFOe5ZozNfckaqeFjAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821a375d7a-1e2db207-6943-4cfe-a915-7a9e143a28ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03357cee951165e66494a2ec72fb7dd5f154605107c0eb08face6e1b70d6d075
Date: Wed, 20 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658297212
