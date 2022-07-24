Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9B87E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658633212;
	h=To:Subject:From:Message-Id:Date;
	bh=wobdqRGLpU/efMDpnvR9cRHl/6KGD0HOVe31W0rE4oE=;
	b=iW6CGuqFu8s7dNQpw+Xcpz5u0+HatfD1sE5DKHsZFE3sfZ3eal5y4vnCo6GH5oHX
	EKNQgCdAgHRp0tJH/qxLqleCpNXF71VfKdt+rr49pU1iN0rNUFIFb2xHMMOVqe6+Mby
	nNtexmqoUHohV0Xj0KZK/mpsBHzJhbCTP6nAH5Sk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658633212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wobdqRGLpU/efMDpnvR9cRHl/6KGD0HOVe31W0rE4oE=;
	b=UDtp8/bEzfinLZ/mwZqZRtNl+77WC7rUkiuyCU+2VY3dwT+XIYwLqLjnlTU8n4wi
	ZVXLwHuKBAe3fg1Oo8X57uaYleCFaDHOUXqZNjAabVd5378jq3H8yuPYVNBnhjy4O8c
	5dv3O11T35Xk1rSbJVQs8a8jA8kmAhdcPxzRdCWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822e3e518a-e42cdf11-bd9a-4f4b-a9c0-77070f82a0b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b769e2bebc8db0afcf6d1ce1a4a610baae2ae76710da5b21302fd5c9331c607
Date: Sun, 24 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658633212
