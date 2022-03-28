Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B45F17D0
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 06:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648447618;
	h=To:Subject:From:Message-Id:Date;
	bh=llP8PPLrQTmQTmZpSo4/rSotFpZuOK2vUuI62n4dU6E=;
	b=PQ5leP40hDPJa/UFwmiVLlffrvGzV6oxV+2p4SOU7S1SWV1CyXgIK87SV16pgVvY
	zrWW3rI+n0sJxY9UbRqi3Oss25wYevZF7nZ6vD07+QvAjG3/IbVwTeAYrWab2o9Nu7E
	abura6uEwRDm4Hs2gerGVrt2InQ6OdCUs0s6bjYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648447618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=llP8PPLrQTmQTmZpSo4/rSotFpZuOK2vUuI62n4dU6E=;
	b=SvaZJTjcm5x/lEj7RRcMcD91pnC/Q5PjABAE3bBpZXhGn+wODn4FVE+TgidmFDUq
	wyw5Moj03zaUig+u6Bx5daXn8bpiRx9W/qbTvhoXNcxRBPIyLB5VP1JPZkS5eYk5R9W
	/nbYF92f/hZYCz0JyDaT7KITqqPyXxj9DcIoDWSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcf227d07-c8e4cf89-7472-4d40-8216-35b04e2af092-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b5433bfc7f4b6fa0e66b1844063bb06d6091a6e0eb41fd0ce4b5390079eb4e0
Date: Mon, 28 Mar 2022 06:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648447618
