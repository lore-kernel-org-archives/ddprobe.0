Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BBC2568
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645529184;
	h=To:Subject:From:Message-Id:Date;
	bh=eJUJMKmfXWkm4jaCieK76T0MgjUULZnnMZIwkejYT4c=;
	b=Fa4XWiODvGC3PHMuzRIJbNabg0QULfBN14Y4ktluIy6IMMt5VDqHJfWJYN8Glp0C
	ik4rZFgAIGKkzi73l5+BIvEYSMqTEZNkETumeteOA7xyQLiaNfpeWOl+qrms1lF/HD9
	vl8xUDQvBwuDb4RsREH7l1w7EPXQ83G4CLFhIW1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645529184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eJUJMKmfXWkm4jaCieK76T0MgjUULZnnMZIwkejYT4c=;
	b=icUjsW3fjeb2krFAofL2myTdfW9H6TlVFJ5PjSpIstJYER7e5CzudXf3rnXQv3Iq
	4FJ7MeDZbOs3CuS/dQrYFl3a+Fougj7LXXf7HSi4KReuzKseOf3s20uxV5yy2DxHFuN
	mqgT/XTZZ9AOVx4hTMXuePaXudUsr6HNaNiZvjho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f212eba42-5786e89b-4cda-471f-9590-ae127d72a039-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdc80e865b88f8cade2d091029301c9999a859e2c81cca4031f2029870209b8a
Date: Tue, 22 Feb 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645529184
