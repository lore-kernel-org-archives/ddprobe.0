Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114277C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 17:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656091612;
	h=To:Subject:From:Message-Id:Date;
	bh=+2L/0j5xd/zHi+JKyfQ57Sf4pg0ndYN/MTpO0x4DLyM=;
	b=Z9h7cFmOk4ENehhjCYR7VeuN0/NYfEnDLTnOq+0gvS5OB2W98t/L1Bz0PQHEytcO
	TbUUCvFLocoDzf+s+b7+8mvJKWEYymPSF4EqWlrUu/wuwq/QglyHYRpltRAPAGgf+rH
	yd5MTnYmRNhzNaGIClwW2CHkzozvOUP3YqLIRLnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656091612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+2L/0j5xd/zHi+JKyfQ57Sf4pg0ndYN/MTpO0x4DLyM=;
	b=X6Bf0QZMeaP3G0Ca1uMrp77mSq6TFOVLIvzZTtM0CjhfTqc8emUN09dCaR7zHrbQ
	wmPQKf37ktXG6EHiLx8mLD6g7eezA+hCn56mY5JGWHnGjsU9Rv6pc/dlKls57B0TEjG
	/TCEon7ZCqzQENJGqDYxt51n9cvU+HyPkC1xAiy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196c0948b-ced938a7-ee44-43c9-80f5-4e83b4a0fe4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e501b47bd9c5521295c1b61b508a46851f4dab359719501e5962769bcf4d133
Date: Fri, 24 Jun 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656091612
