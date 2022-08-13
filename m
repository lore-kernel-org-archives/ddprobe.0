Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE63639
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660363252;
	h=To:Subject:From:Message-Id:Date;
	bh=j0yXKnsz3XM/WuAlPPx3InWGFhyvjTiTrjC3FfIPPPQ=;
	b=fxxHpT3W2WyvRe470yC/7DeVgmw3bgpv+5KeET3xJADJ6Lvm8Pz4wo9bGZt+s3fL
	IDZ39ugQTH8RmJ8rhAYe3iqlvqyfXbx6yJ2RdsXUXrKpZccXPe92ImvZgLD70jUv6+4
	dShVm5C8ztAbfRT6RGmjzGiERFmeh39snRa06cQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660363252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j0yXKnsz3XM/WuAlPPx3InWGFhyvjTiTrjC3FfIPPPQ=;
	b=YynedTQ0E/SJME8kBf/VUzKBGmxIybDgN58VM6FYsnDuunqNit9SaiNN46ua4RH5
	5GMighT6vs3f2E6Uz2JKR0n8wlbBdC3ZBGM/Qg0DLkQ7DtCP2xHw+TNxvYnaDVDLTe1
	KYIjbsum/UDMfz6HL6P+Cf6t5MqBw01TiX+Dvc1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182955ca35c-620d847b-c7c7-4672-b1ff-1709535a3c81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 097ac8159d022e8209032aa1e344d998cc24b2496cfdc7d47fae5274e28828c3
Date: Sat, 13 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660363252
