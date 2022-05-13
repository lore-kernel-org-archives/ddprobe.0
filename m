Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A80120F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 04:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652416919;
	h=To:Subject:From:Message-Id:Date;
	bh=/rQe4LfyzPNq7CXW555Uzv1kyDncvCl58iTE7eQaWJY=;
	b=PB4iIbl6nwLpSO5JbT7O/KxBzKXt71k7v+lvxC1p9bQwDwRPocMuMEzh+inJ0QOS
	wyT57+WNcJRT5QmhCN4u96VOwus66lC0l5xPDsUwnOhpnAAds8a4HG99M1Rds3g1Brd
	AowXp4Z7J/I5kXmufCy8+lQl9CT03nG2/SF/aLQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652416919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/rQe4LfyzPNq7CXW555Uzv1kyDncvCl58iTE7eQaWJY=;
	b=CYMuiDKKqaFpbu78qSXQwxstN9hYA9EKFappfCJj4GRtbP1rsqgfVL+awFwGcgUJ
	cR+BTgcyh4CnwMqFcry5f94Dr+qaQBnaqAfNkjwx0CvSO3QrjRDf/i9gNzSdFrvSUIB
	RqdpU/uOGjvNcL9wWLIFOrBmrzpYB7wxLjjZOIA0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bbb93706-731502ba-51f8-4f68-a2a0-4d5df09a87fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c27f9667a6c546b92c89a093c1e19aeca620fdefc56c0eafaa58082d259c512
Date: Fri, 13 May 2022 04:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652416919
