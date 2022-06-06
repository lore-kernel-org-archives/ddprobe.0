Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053611854
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 02:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654481159;
	h=To:Subject:From:Message-Id:Date;
	bh=OjDMPqg9he4os6EGlNx8y6BpsfF5C3/+I+g4aYCZWXQ=;
	b=Wv2uSXxEkpRVAk3r0wrcVPvi7g1NZV63qO3iDJZaAlJ9Iao74n0sIlwMYQ8SyFAp
	Pi5FXYD594ohL0coJFuNi8NiFEG2sJhPV80wgf+pUzFxjkc5/JNXvQR24JC9tY+GEbU
	q88/ItRWzuVk/luIwm66luBlpKRhvngYEM4+Bv8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654481159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OjDMPqg9he4os6EGlNx8y6BpsfF5C3/+I+g4aYCZWXQ=;
	b=g7yaknhMD7CCYRzamQ8Kv9XTkU1+tnuwwWmxs74WaEOsv/C4MIi0YgA/HJWoCPsC
	8c2W9t7XZq5c+TrYJkglYMVkxqQ2IKBb3HlawRfbKpwVqOBK3HNXayN4W+n4b11YcxR
	DGVPXOTZndjdYODltOCM1wtIwDlKt/tEpiGr6sNw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018136c30474-a8663595-5f3a-4715-bed1-0fdbab6a6d4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64ac44d8625e7ed0f7f1a1d99232e3508c5e4250b5a70872b860997bc0ca810c
Date: Mon, 6 Jun 2022 02:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654481159
