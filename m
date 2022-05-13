Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3FA323F
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 13:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652447759;
	h=To:Subject:From:Message-Id:Date;
	bh=ZK6c6TqtX2LA8W8g1kK/YrMDvEBr1I1fP9AOlvLCs6k=;
	b=UTXCZCIxY3GcHrbYnrQmollzNN1oyiIj45oNkHtUwtksm7pEEa5srPuY7V9+lPs0
	cn11sBflInUHirtgF0a+iBJ6kaCTngrKJkbFc+BQn59jkGSsvs3dAwBUC5p0lxRByii
	f+IqGrdlNpuSE4TVu817mlL1dCYV0KcdMY1hhcNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652447759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZK6c6TqtX2LA8W8g1kK/YrMDvEBr1I1fP9AOlvLCs6k=;
	b=QEFQCNLwEo+ErGJbPQOAGrCj+YOasrb9ikGDlWR1uC+5fdOyAg5vRUNMIhnezXjB
	6V3cupR2aoJNotBzc49WuFCme1hU0qRH8cyoYSNZTzZVuagIM5cIvI0jLpwYbroolQM
	wqdHn2b2l6O3mVfymXKIADkcSRS6hHiEpCpvjOBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd8fcb8e-58163497-1793-471c-b84d-fc9d08616d13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da47248dcbe2e31117442836a5a18deb490932d7ad0c63d4cc775f9b3675b020
Date: Fri, 13 May 2022 13:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652447759
