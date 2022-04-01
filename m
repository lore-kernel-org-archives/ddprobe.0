Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DBF7B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 08:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648801738;
	h=To:Subject:From:Message-Id:Date;
	bh=JkDrWEfaluKRGbNjhTJZeyjYA9zD1ePYRgwUOfWF1GM=;
	b=bXKOiaR4BV+/DuD6GgkPFBw2OLbmgHtbwF+ajvN6Yxus8K9ur5s4BOEeM07VvQ1M
	oUouctKeKEMLwS4AxzIlK0CihUC8D4qqhUtjpaWsnMN9udnVUCJkxqVKTewL4tNIYOC
	mgVDRKJBIG8zHQGdhHH/8evqrT76Rstcq60yboDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648801738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JkDrWEfaluKRGbNjhTJZeyjYA9zD1ePYRgwUOfWF1GM=;
	b=DG5+Tp1gg/JUT7lV9fEKKRQAVBihrCeTSs70OK+5ZDe4OtoJbrZpUhDZQC3V8Anw
	h7uWw8S7R1rOfCGZETvcWYxKGb7zWXS/0A10Vp0zz/GYjkEFrSAfmvqIPesGeRgYM4O
	KOnyOFqOItiHRp/h5JrbpnV1PlRxgE8UCBfXX+Z8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe43dee22-c99d908f-de7c-40ac-97cb-f9eb77e79373-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcd66a552ef0b3cba58f6f009bd2d0144cc23ecde5d658b9976df00137483c11
Date: Fri, 1 Apr 2022 08:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648801738
