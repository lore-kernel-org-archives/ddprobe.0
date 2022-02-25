Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852351FDA
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645794684;
	h=To:Subject:From:Message-Id:Date;
	bh=OKvNuztlkxP3xufj08UstgPoTZ8gRSXfZffp6mg0QEI=;
	b=jOj4qj3IsfER4Zi5p1WC+rd3Ipc1W8WV3WB7R65x+RzXfIQXdyalf97MDILymhtx
	VM/FbSBxNbeK2bWiatVbFiOUYqPb7Gp4aHNkvFhn0HJImurXnt1k9SivLSDkZk6jSop
	Gob2Gr+2aQQ2HrXOsPiBTj23llKS++ZoYOcr/qMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645794684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OKvNuztlkxP3xufj08UstgPoTZ8gRSXfZffp6mg0QEI=;
	b=UqXX2elPJRnRAMZhKC2mXleTFpUrlpnCiwHTA+cjNni+UwfivsbnfF/8g3QL2B/0
	47dob4TzPbAgsYjCDcRaksZ6qtJEX8+ZJ9H5a4hHPppGj3pFL/n9Ao3Xhze/+MjJPz1
	hZhZGh4rbkhNerjwUVF0/McW4sUkpTehG8/3krOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3101ef50-6cf1d1d1-f47f-46dc-a8f0-848ec34d3c95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7dc9e4161ae40643e9b16e13e848d6543d790bc95968c295ebf7ccdaddf2fe8
Date: Fri, 25 Feb 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645794684
