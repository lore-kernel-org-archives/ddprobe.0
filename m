Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8946B2F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647443484;
	h=To:Subject:From:Message-Id:Date;
	bh=iq46hXmtG4pZzrcKFJOeFdMESHcp2d+IriAOfzAXQSk=;
	b=IrBA+28Rx3oBDufwVlSYNIXkV2xbuiirckh/xuqHb4fe7bFM9EJJ+5S5OLkLLt9O
	LK5xXQd+vV8rGsF4h6dru2uwUCEJD2NceYKOPQC4HVNSZt1InMvqpSlbqGswVGiBT9j
	hQHlbDyhth963kqWYuFv+2yhmerPLS3+dbJrI/gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647443484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iq46hXmtG4pZzrcKFJOeFdMESHcp2d+IriAOfzAXQSk=;
	b=QxeDamKqPYnPKVKF/16v7yoTvw3lqULeNLkwr4wknMe3zK6XP0itI0kJ/2dOi5Bw
	Amnh2MR6FFQjFjNfhb8xoZTof5aDEhJcyVwu+hGa3jQ65+/BD0K7GNfbHGbFx10QcFw
	SL45wYu3OfIf+xjTT1tE4pJ6cC1ohgh+/knJh9Z0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9348a07b-eb8a1422-5727-4c55-b1ab-2e83157e4e0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e09c2d3080973efa0213bb7b959076f8e7be1e2bf16c50fb3f7daba935aff2cf
Date: Wed, 16 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647443484
