Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD257C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659910252;
	h=To:Subject:From:Message-Id:Date;
	bh=IsSwHNC8rveyIu20BqL8gWh5LgQmq06Tys+aHmsxbUY=;
	b=chr2UdQC70QaB+K4SoiZEvDf5OJ/TOUFKjwgBfCOBdORKoCkDbxoJi0cPyYsyxUB
	uDcQYOsmzWmQsraPfx+jcJH2UFzbgXtMjRt4m1LRXM2CcFfcmVNLm9wZ1BaLOfbPmRg
	MBT8sX7WFQZQp5UzkAbi/elDBwjZF/dMtA7FvP4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659910252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IsSwHNC8rveyIu20BqL8gWh5LgQmq06Tys+aHmsxbUY=;
	b=Qb9tmW+0Ts6TAK5zRqrGrkKFc1NeHdNVL3D1r+/QpJZAq9s/bITDyQjXWx+PzHtU
	hyDSBGXyevxEgeEFC+zGV9FOczS9eJJ9rhVEUn1Vrsvts7oRn/cy7aRLF57hiPXnnsY
	Qy1HpoUDbUIu6T3fALEoQC0z2nwcR3GyfDcFsDTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a5c6813-0b4c3062-2deb-4518-ab94-55738e44764e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48aff26064e47f8032bd307b30027113c40ba20583064c85fbc369cb0c186003
Date: Sun, 7 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659910252
