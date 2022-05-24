Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2AE7F4
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 10:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653386699;
	h=To:Subject:From:Message-Id:Date;
	bh=0Bcq1tpstfpVwqaZjLzDD5TZ6lFuUoJMkcxuTJEXS28=;
	b=Ksoib1w2mulpB3CtCfJ1DO7bCQAGwXfkZYRKe3410sZo3XJ+80kwRz6zGqOgprka
	KQ1rSHr+pRoS1Byc0017WDTUev6w5kvJndDYR0dz2uW+Nc4TfEy7o5GVZ2BpYCuPUJl
	wKRsFPiixJIRhrmVBLo0Y9nBXei/+ZnW+Nir4zVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653386699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Bcq1tpstfpVwqaZjLzDD5TZ6lFuUoJMkcxuTJEXS28=;
	b=YqEJjgxM1KPV/vmQbmweMZwgTFvB6K5qxaa26+AT0WwuEt/GL2jByvQ+gRQdzX2d
	no3HdbgEYTVQMMvunW0GmH/SCYqV22GOUXDQBns0ZOVsMzWd3qUJLf+xcwOIYihebzU
	vygJthA7RalPetbwiHnmj0xIWR1ADNMaqMeRHCBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f586e226-9b78af7b-c4ef-4ec7-8fd0-ac214808498d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05c2821f093b1cb18db6ac8c4130edf4818fe1e3aafc2acd73dcdc77cb73c6f8
Date: Tue, 24 May 2022 10:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653386699
