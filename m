Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FCC2561
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657487212;
	h=To:Subject:From:Message-Id:Date;
	bh=VRCSKNcSsCaMJEK2XUQUHdRRhl8c13p29+TGalRljkc=;
	b=aRva+pYpXzGXWdSkEFI2eRzrkrDE5rmmmEhZKyRJTzq2DCcREfdIetvaA+QL+PTq
	aTeW/KCtwS3GoWHF4wqyMTtfv/G5ifdwScEcfMMOtFuFKJkGsGXJQy5NSiKDYhi+DS0
	gD2nLmENE6VgvQjfqanKVXJjAvirK0GKKu18Ki2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657487212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VRCSKNcSsCaMJEK2XUQUHdRRhl8c13p29+TGalRljkc=;
	b=EVdhFxjPxk+NbzZEMYfOdqEcg6yaYdYBLd4cWjfqSvwWrKk6rLWigkSuW+RyhqWw
	9Ar4SwI/zm9r9Bc9igM9g0ieB+nv13VHQnx5cL+Gv1+i/ZDIIcPelaj6p6NT4nfBn+H
	b6y0uPCrKxth7f0XhVSrvYCHHdF1xe2nzCOSmTcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e9efbf60-841b6f7c-f673-436f-983e-0fba4fa08a31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00f22aeef91f378b68e757efc90c118034d83252e3fd407c0711dedf73dd4d8c
Date: Sun, 10 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657487212
