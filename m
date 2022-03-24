Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081B67A
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 00:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648082998;
	h=To:Subject:From:Message-Id:Date;
	bh=fuNflRPNjdGa79ad712bjJ3F8P14+hRxfb0hBiy6BaY=;
	b=Jc9G3WWO+avLc/BrFJ8SWPSKHl78svMjb3j/ehh4HtXSiianIIxqhhxG4KZ34c2n
	8nwTsEuJDG1m2BaljhdAuB/YXK/kbTZUW+RaowDh8oJ9Dh3pfCb5GlR4mIJJ/YFCXT0
	faH2uNWLx5UOC1eQWf08e8aYuJWmdpUx1SHIRKHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648082998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fuNflRPNjdGa79ad712bjJ3F8P14+hRxfb0hBiy6BaY=;
	b=ceg58DmocUScaw9nWP/+lCC+gE5HU5xpuBEYWhAkzBvCI/muOFYO2E/H6vRIkaPY
	LViaMEio/NQTsGf9F9l2MHQA3QRImy1tur13M51YD4A6dKAxB98JVp7Ixs173Ezo+JI
	WIJehJM86lubWg6imfs66cXMhiQDd8XcOUNmYoj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb966d3fd-46e4e14a-af7b-4ddb-8c4a-df9296b665f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd93e5670bdec2eab54c7a873930c00bcb50decba2608551f4508e04fd37ecae
Date: Thu, 24 Mar 2022 00:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648082998
