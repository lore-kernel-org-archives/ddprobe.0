Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F46746B6
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647403584;
	h=To:Subject:From:Message-Id:Date;
	bh=rVxn5IlX+FcGHg8gRRRYh/Lk0V+e9iq4Y6Dtdqhyhps=;
	b=ccv3fwjSDQza8AmJtSTPZ5DEFeSiF/Q+oUCAoxfFg4uFYZGknAJrInRMlomIr7JB
	C8HXc20CRxwYkQUkpSgQtwsOuyelYsVi0CAlFqbZPiyhAy+tO5BSoPhSwXYzfPo09Wl
	L7boD46oOkCzhDstfJIg6Im2qQ7vjjysMIkv3cAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647403584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rVxn5IlX+FcGHg8gRRRYh/Lk0V+e9iq4Y6Dtdqhyhps=;
	b=OsjQEfwXpH+CRwVXN0SudIxHYAjrdxDVO+TDWCa+Ph00LbUZRxQnI2T2dNyamTxX
	22H/MCWWMlsc+MvxY3v+iVWqTWjastgyQWczgTuJfl9lqBKNmU4q/x4YP73HOehel7F
	QceTjN4wJ1NNdGzRW81GXFmJmtbOSLUsKD5Nz5yE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90e7ccea-e3b7879b-4bc3-4390-b7a2-fe5874050038-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cafae5ff7bc34e6b549002bd5969962e89a9417ab33f5fbcff1d8dbae1023ab0
Date: Wed, 16 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647403584
