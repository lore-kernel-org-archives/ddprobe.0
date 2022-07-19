Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF58D53A7
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658269612;
	h=To:Subject:From:Message-Id:Date;
	bh=yhf7QW0/Rys/lnhVFpChkH0NGWKvmAhWhZ/QoSNPHxY=;
	b=kIdoQUTZ5QAFCkX8+39TxclOcK/c/BW4WgnD7Z7H6s7wOxBtdFbQhu6xQ5RKqiNd
	2WYS53bbvnEuNnc8xt+B631KFD5eudjZzpTzudACgNwTzyIE7agF8Iiw5uFQRSb/ZNS
	e++RWj5NP6GhJw/uNdWD4+06s0EqPTRoHBqjgO1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658269612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yhf7QW0/Rys/lnhVFpChkH0NGWKvmAhWhZ/QoSNPHxY=;
	b=Dx9O1kkE5VQo0i15qWHZavK+Mw4Qii8t7NJ3swY0UefutBuwz6y2KbTz0HXzJdeg
	Rkjkib3ssAZb+8v0YoUwukRib0pYHBPQBcZl9tudkoN4HWKFup9P5TbvL8Q9rlxgk2Z
	NgMwK0mXV2zRT9T3CU36BSNMnDy7iDA0fGcL/mPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182189238cf-9d385ee4-35e1-437c-be71-ff781482ded5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b83ff99aca8ab94e6550a35a58c3922cfa10f5bb18bcf620841e2040ba38ba2
Date: Tue, 19 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658269612
