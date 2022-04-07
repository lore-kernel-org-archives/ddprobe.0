Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7E52563
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 14:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649342758;
	h=To:Subject:From:Message-Id:Date;
	bh=WbJJjtanDDYVSS8F9oG6j+OZNnA8M6czEpsl+eZVDAs=;
	b=VRmSmkz5fTxfPRL4ZIrNkiDbtmBAGyIHGR5K91H44SCdlVS1Ri+jXR2VnOkhJeWU
	ZCt8Bxi5/CIVfZh59WEIv/jQv7BjEF68vM/PKMpayjMicfJp/CHt67ahXEL5uz/o8m/
	Dm2fSNiGQicMMNWnSp903jgMCBlXZz1bdtoc4yls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649342758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WbJJjtanDDYVSS8F9oG6j+OZNnA8M6czEpsl+eZVDAs=;
	b=Kl6hg1HIpivUuqCMcBM6xFjRg9al+tT4ZKbRUYPpoSrdNVybMZYzzSsty/mOjKj9
	jzQpeC7iJ+4+AZfn1c16HEpbqFHH0/ZLqhA0d7bR/pZekNtfEx7yJnpX5Zk1LQA8mMW
	7dKZdKKi5DAbrhA/OMxa6uMQo9E6UPi10P6XmmCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180047d3d99-c9eb9d85-94f2-4c6e-9317-73c237204b51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac6e3d20e2590cf2b2449f7857545848711fac85a799f1bb50b001d7b3f34894
Date: Thu, 7 Apr 2022 14:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649342758
