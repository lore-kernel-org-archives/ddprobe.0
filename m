Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914607FD
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658917852;
	h=To:Subject:From:Message-Id:Date;
	bh=Rskb/L1uLxj2nY0yBThZ7gI0HtKGTaL4Vwl6E1JPuBA=;
	b=CmefMcLrWD4njjp+2tx21Xf/ieogti1HkVgPbh7sqQk41FnZV5gZXQqwhPw+MPeM
	5ZzKjPZxSanKmZuP1CGMTdcAzXP6uPGHoYLGSYyHUKZYcma8wDMwpjaCroa/LVQwTFi
	6NGbugwUzAIbeYXW5Q2eyHBYiXm9RAXWdZYminLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658917852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rskb/L1uLxj2nY0yBThZ7gI0HtKGTaL4Vwl6E1JPuBA=;
	b=jdJJ+mTiNRG+I8SUiAFcH833iqELWvFyNWxxHBXxvM9kjoncMl0MrlVKRnBf7hnC
	F1rhDWnXEGUnvWyFe+tmjXd97NeDrIOwjvDpaE3/P+F4S/vw9uowbbsBVe/RF4S/FXh
	9sGofkGTeZuB4N3Xu8XxpcZO5Sj99pfrvwVD2ddM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f359557-2018deec-0018-4c63-9e96-1773854d48f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85356898c19a7825417cba90000ac992f96016bf4f5a6f47abeef297dc8f0495
Date: Wed, 27 Jul 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658917852
