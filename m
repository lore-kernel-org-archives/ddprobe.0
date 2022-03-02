Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3C020E9
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646181985;
	h=To:Subject:From:Message-Id:Date;
	bh=IPz1j/PxL+0tmz25lLbYAikQi9uTH/pfHA4tKwh7UoU=;
	b=C6Bb0EJza+JjR5DDAk6RL9LQUUg56dXy/C4JdRkeCb47fIdAYcDSZqZhIqcLIfxp
	xnyu96LmTTEP9zMMoHEeygiAB/2TNTCB++G0/WUgc1jzAL0BGFYmjPwO4GTVtsddKGQ
	TXrsilO1NyJm/bbBlSj4kqpvQjzpjSj91sqjt4yI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646181985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IPz1j/PxL+0tmz25lLbYAikQi9uTH/pfHA4tKwh7UoU=;
	b=kLNvhpECiLs1IqwUr07HHMDcGegNqUZoVWAn+Ak0Rmad+OZPfz4ISGbar9NEbMwp
	ZUAggkiklgHtTbdgCdMfNTxpHvl7T07lFv8GyR6I5MLYi+9xx3gVcr2XhEEsdxOmhyy
	WiHc3mJ0TFNjffCpAmKP/VXuF3OYM8f+p5/0sw50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4817a9fb-1c405af2-220d-4a7d-a213-a425f2bbb7de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf0283e678c5b3e06c00b8cdeae3ddd4c51b6b24996ab8a5b957ce8df053ed36
Date: Wed, 2 Mar 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646181984
