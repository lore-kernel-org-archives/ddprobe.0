Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B22F373
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 00:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648687078;
	h=To:Subject:From:Message-Id:Date;
	bh=+Xhqytz1iB2Oits1ha9rxa1NLMXfKzCD7NS7Guul03M=;
	b=bsFPAAc4yRupufUnhwYz+g1LT9+aS+WxWwMIgXhQ1Dyn/pSYT+Wp/9EtM8dHf3Sj
	z9s+8u9sqbtGq9bxrxV5VQ4KItr+sW2s4DkKe5Vq6oZqdXjTft3kX6NoPvxSZEqro6q
	5NzeC9YzdJPpbZmNESBTUohojvR7rA5+zC7AbbgM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648687078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Xhqytz1iB2Oits1ha9rxa1NLMXfKzCD7NS7Guul03M=;
	b=ROU5SpklovYcQg/o2wwu5SV2MfzQbY8xl6JaadccIy6HgaPrqB/lWhIqvjKicE+p
	TCqgc541wQpW2LYvaPCE5zumOY6X0z3jRCISzJEXc8kikJlZ8Uv3gU+piLVb0jUVCdI
	jevPjGdeVqu2g6z6dXw6lXZ9F/bjh3OIy7RUyBf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdd685b7f-5e3f9dbe-ce84-4dae-a639-38e10480a664-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdf584d5a05b409f7f8b254ac8cb9fc559920eaf23a0e16e119b56abe57bcf09
Date: Thu, 31 Mar 2022 00:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648687078
