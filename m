Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67B023B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647358585;
	h=To:Subject:From:Message-Id:Date;
	bh=+REo+5zbc7emnGcecgRpJsCf00K/v/b8mP3YPc1GXnI=;
	b=IjKha4ScfNHijw7eI2KJ45uSX1FAAx1sRmvZZWy1XjDzc90rQrkRy7N6mmbO6I3T
	qPyUsoKNYW3z9GX8iv6Z/OsmvcYKPGngTSWiH1wxLdM0y1MQXDNVRsi6ipEI2PgUqO2
	n9O+Jz57ZXDK5xFxDP65ERukCW9PVa4PeDghhykM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647358585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+REo+5zbc7emnGcecgRpJsCf00K/v/b8mP3YPc1GXnI=;
	b=YHjef6Tu0MU/SEVcHlJU2LuncLwfBb+kT4LVc7FsDzSgoro/8XPQoj8AOV+dPvOZ
	RAwdDfH/9RxBQ8+aPLcCvOuzfDARaJx9uir9v1Y8RNpQ5BlOImYgXGD//KIqVfpYMtT
	/I0KfowjJRTpM3+k+Q0rNK5WdqWqdnRh4Y4UGWug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e3927cd-45eaad38-95f2-41ff-9709-9029b0321c2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4206b675b9f8df691a539d377d616e1f2369b57b570fee340a4cddc300f27fc3
Date: Tue, 15 Mar 2022 15:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647358584
