Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE63C163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647705385;
	h=To:Subject:From:Message-Id:Date;
	bh=t+T+YOjMU9erfCTHDC0W6JKD5Pl3z3wHyloMLz2EhGU=;
	b=HWtT3WfHHD8kZaU6fQS0vta7gQ6oL38rKDOXlVnjJRZeDoRkeiW1LUJQh/EsNNW1
	cb1/0Cts86iIdkU6b+NzTbmdtjGQ8WDsX9gnEpLHb0aTQyi7hy2+r0bGFhj8wsc74Ch
	lqmpWiP00r5I2WkMsepctcP6NxYVLZs09dMhGU2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647705385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t+T+YOjMU9erfCTHDC0W6JKD5Pl3z3wHyloMLz2EhGU=;
	b=ZikImp3lNDew8zJQtiLWonRVPNzMgtoBT5Mu94h/WnYi++z+wAUoB9IC+MZ4ZZSQ
	9bp9Kr2WPZE0BYFRrspndW2XWxs+RYGblCuODf7U/os1MRh+9UMycx95FdiEb0uyZZa
	bRDEbv/VR46M0IbUPy7UelgmfWswunk7RQGb9rDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2e4e713-088c0760-7055-4e5f-94a6-b2a2bc8c5c4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c916bfffb26b12235392be3e0f7150b8e5f57f61ef1a9f3621a92da4e0494f4f
Date: Sat, 19 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647705384
