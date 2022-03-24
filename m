Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB571B60
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 06:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648104478;
	h=To:Subject:From:Message-Id:Date;
	bh=XOMX1rNfYWLEV1ombyar3iv72wRD/8vegF3UlgUUyY8=;
	b=IdOv1QNQPPuTs7X9e0aysZdQXBRc+ugbhvLwfB78l7YVxIrRbpqrk7VuBUEbB6WM
	+WX4oVGaEZfenccCwj2H/OnUAcdpCnKB9KDbbDSNsZANUH3EXTu9BhwOPJxtZtxllNO
	XErQ9LnwBrYBS51nd8unFYnKhFN3uf7b+rfEHX5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648104478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XOMX1rNfYWLEV1ombyar3iv72wRD/8vegF3UlgUUyY8=;
	b=R5mk/ZGbVtJFVx1flv+P5ZYBUuVsbhHNEvKc1ilmTtZyMAlqDZpkgPq8JlKhNgug
	FKpKRXlrXyaKaQp6objvqaAQ3rkhvT9OA2EortjmBtSLVxnGye5N3eiWyQryBZr1j0D
	SNWVvh4pZvOF4nad0z+Gaob+s5lH+Jtez9sJGzuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbaae967f-baf6f6bf-8a3c-4173-9aec-130bf4d45b74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89ab72635fc4202c5a4e67070dc0e64f7faf66606ce247efccab90e8533d4432
Date: Thu, 24 Mar 2022 06:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648104478
