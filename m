Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4214C88
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646775684;
	h=To:Subject:From:Message-Id:Date;
	bh=kL11KKI83RiMxRUPCAjKSXSaOOeqUWiSltYb5cGgEPA=;
	b=R34I1u6qQgbRYQLFt6y2LjDGWg/LWvqQvKM6mzdrIqIPyqs+LkKgxo43UC92wqPw
	IpMhZiJP5hATuOjCPjKT0tRRpLupgu0OClckbcgNpMwPCJVVS9YNtCAz2dZmRoinK4M
	EwNgoGkQIgLin2kYXv6ULdkjSdx8bf49GjdDg0Dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646775684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kL11KKI83RiMxRUPCAjKSXSaOOeqUWiSltYb5cGgEPA=;
	b=WlIjYnBQMBRZO7mFGSjbBVl+tqMK5raomb3QpGGbyLOBfKFERhzDeL8zcoLhoQ2X
	Jcpt4M6RoJYKw5gxunZwNURdVUakJwULXzCmkNvSiLn9w+FHNqyv99OBWzPwOCq4ukI
	jW8gkSO4JJEGHKCtBRgVo4/tUiGyTtRYmj49kGmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b7ace83-df93e2b9-631c-4ccc-bb42-ccd958c2c2f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89e7bd731ff47661dc23a1b64f4a1e78a86df6b7ce8d79cc47ff024842a933be
Date: Tue, 8 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646775684
