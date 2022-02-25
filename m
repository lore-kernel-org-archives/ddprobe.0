Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B489F7C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645800085;
	h=To:Subject:From:Message-Id:Date;
	bh=4C1FfCVYfaQfrwRwXNyS8DZIm33PYVvaIm7EEnlA93o=;
	b=RK0lvDD3h0JAx8e2OQVq1Amj15nBnqvQI/S6rOU367b22H5T8hkxhnuQWhDbeNf2
	9bFKERJyL/jOEzKIokgMFvDhgQa2F24ACQOcZJJACe2msBwv3081NNVEWTVOolIpnvy
	LeIQq0l2Yqd3cyD8jIuJgFqUdUl4VQKFuiQejKwg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645800085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4C1FfCVYfaQfrwRwXNyS8DZIm33PYVvaIm7EEnlA93o=;
	b=BHu8y1Vwv+RcqMYO7BmsvBtdErGunsD+GVoUc3/HdfUB407VNDy5NC8p3Q/vL6oQ
	h2LGQJAVPxEIL29Np2OGR9DVnsgnlhdRpS+E7w0HYpNcskavc3rzkV60ZBJm3gOqyrz
	OwmhR7XQazdCmP+++WBknke0qV5ulQkD+iAZ9IfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3154551c-08942621-83e0-4470-b421-80ced0f79c57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34f9f0f0f3f253dd922809c8a0e26a84f15a51aef0170f4e7865b5838a185230
Date: Fri, 25 Feb 2022 14:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645800084
