Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A357C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 11:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648727758;
	h=To:Subject:From:Message-Id:Date;
	bh=tbr0zbwC5j7zk1VHDXFfoMWbbbBOpdfYhhQo4xDztx0=;
	b=aSDX54HSfYAvPzNe2qKwZ6nXqMZACUVcUOZnymzxKmAbRp26gFbfuokIpoG00bGb
	CWWo3e4z1BJCeIYCkpnMDB/WaWxujnFHYfqEsbKEz7GENGxKkHPRILDD2OupU3HcpkG
	S2zKMn5OwAHSoVcersXedMC+H1iWQUCX4a/b/2HE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648727758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tbr0zbwC5j7zk1VHDXFfoMWbbbBOpdfYhhQo4xDztx0=;
	b=AZd5lmWFTHSLK1plhcMCd/INQjAHTw251JRmRg4kVh28OZZjdZghThUFSA2nlu8P
	/eWHw97KR1gnLzKEib+i52Pxz1oxN7jBmtdrYdj1Fcwd0xjn0UzOjJdGqNkQdUAzKnL
	26J2nXb/gVJ+3ArGb3oA6YKQk4U/AgTfE6LCzDcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdfd51585-9be6a8c0-2f7a-45d8-95dc-7501d67624c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0c768d3302cf7bd6271fb4b785e8b5bd22bdaff6e815bf5f44968c795efad3a
Date: Thu, 31 Mar 2022 11:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648727758
