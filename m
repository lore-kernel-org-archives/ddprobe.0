Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678A920FC
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 08:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653984059;
	h=To:Subject:From:Message-Id:Date;
	bh=8NSz3q+Uen84YJuhLyPIOGmd8f+qCRykzY+W9x80dgs=;
	b=MB3ZLJOiB1aE3PxQbx0SIUA3/+gOxMAY/GN+sjRt8JucNl25uSeDMg73TWyY9Dd0
	Fq49Xm3BX6STSqF9/J0TB0/p0B5TYuLudunaKx1I7ZOaLMVmvpYUSkdnXJIysK4ZWZI
	+kA+EY/eHtBl5gueElo4/sH3J0wbTbCri1/EW6TM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653984059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8NSz3q+Uen84YJuhLyPIOGmd8f+qCRykzY+W9x80dgs=;
	b=AHtx4iB5eo5+8sYWIOjcvVpwHNYZTWyxcSmuhuxdJM3/6DuKVqaDqiLgiSLoiTmI
	bFDbOzsosqsjDFyNLDafky06tmA24mPLxDaGD8B/WynuR6WYwPTmIOqXMih/M4ZhZd2
	EK0Z5O9hvKGsWNryIecHAFGMw6Xl6bKKRe10FIJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811921df83-6d3a7de3-e9ac-4797-9e1b-9852e37282e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 061b6c237a9f11ec612c3eaa894ba500ee91a8e7dfebd851f7bad59720eceed0
Date: Tue, 31 May 2022 08:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653984059
