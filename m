Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139CC362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657179412;
	h=To:Subject:From:Message-Id:Date;
	bh=3H0QHLMDRZLUmzkgsymck2yDx49o4ZzMxxaHgejo+LE=;
	b=WRpAtglx5pcu4iMwE2PEozhm5OHQHoNNgouUlDF/dt34WawsXzqQeh373xI6TtMt
	5Z+An1XS8lRrhiW0BL1znGh7zZw1c0Pi9TX3M4M3BbpiVRrXMbirnqaNjgU8sZD7ZYv
	sf04/Y01BI/P9pe+mnUwyDgEYzN7gt9VBqxJU9V8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657179412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3H0QHLMDRZLUmzkgsymck2yDx49o4ZzMxxaHgejo+LE=;
	b=VRP+M6pqWovnHXoGZunpAZs9vYNk4x/TwHuZm8t94TP62jF0frzX0jpDAnexCCUN
	9rxtdhidcCOocSVYFrl37SR6UyxHOUSRc34KSlDVcR0dDoGPd1x8ehZ1NYrSTnZLp4B
	qfJ6dpwNF9aYPXuFbc70iIf4GufS9TKCwL9xx+D4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d7971738-aac6e33a-779e-4ae1-ad85-3e3df5088b4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb7d3680ddc230cc234865902594d10d9dd908510565c88e7a18d58099b437f1
Date: Thu, 7 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657179412
