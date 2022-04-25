Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C807C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 07:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650872638;
	h=To:Subject:From:Message-Id:Date;
	bh=pAufdA5b6z/1WCA+kGzSL6m6Yv1BGSqe6zEBOJ9etBI=;
	b=OFhSf2pHQGrpaaIyfQjDSrAQ0cqsjsHVUmiM7WSGybwLj5iJZ1qsJ6mjYnAGYckC
	s9kQoe1HsPXUKofJJeN94YdeE0wI6z4C7DnG1BLsj4ibLsEsbjxKhPDv2efHTWsevuO
	/P5EkYcAjptq2WdIhAzx5ZxsVzWCN+4AJNYc0Ql4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650872638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pAufdA5b6z/1WCA+kGzSL6m6Yv1BGSqe6zEBOJ9etBI=;
	b=OR6SU98B8Q3gmSnkN40/c7uURG6FPpk42lb4x7F8YLY5ogBTJoryVPBaFb0d3FgS
	gh2/Es9jR5/zvYgHnALNZB9Xxu9p01sh9PzTvXUs4cKkMm6ZquR0U5sLtEXwUqOp0Ij
	E57XsmckMpu0FPn/7v0bBry8T4gYnkW8WU8RaSQs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805fad5b2a-5e3c95d9-9b12-4bb6-a4af-d001144daa0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4afb8db6e04839348ccb63aa407c8aaa6faabdad65852c47f81471c621ba1d8c
Date: Mon, 25 Apr 2022 07:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650872638
