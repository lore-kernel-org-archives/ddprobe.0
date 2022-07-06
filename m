Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2296B7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657138012;
	h=To:Subject:From:Message-Id:Date;
	bh=xwmkQ03C+PyDl4h5X0yZGlqYtQKTRMRYTeJTWbR0JHE=;
	b=Z28gj5vrmFrY9wIdb5Rk1KCXeEuqVltCTucUkEHE4HlSSFXcOBUovBJBhSWusyUV
	0SFGkX7fe/Z4bjEMQeTpjDByEWDUdQRGTZNpKpSmSbFAQyyLTz1Tic0jRjx5CIh8Tzc
	l2Whc5UPRr2gUvogddKpIZgD6d93nEAOhB+2OpD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657138012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xwmkQ03C+PyDl4h5X0yZGlqYtQKTRMRYTeJTWbR0JHE=;
	b=SI4HJSOAr11HPi/HGOnxWYJRq55jx+xWjsxy59iGtP3k5wtmVwWf+6jJeFUSuQHs
	RfNL0k93ZrFxliuCC6IryOcLuXSa/OMDNBkW+m5CdpIvhv+vicwOJRguXbJhnWXsqaN
	6JPQePZgYuUOBn6OPkCJMYguXyUAGhEymK+k8lEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d51f609b-57137120-a859-4a1e-82dd-474c6892c4da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38dc4dd60a6d65606e14ac3f2301ff9a2eb87b476c4cf7d71f11fc331ed9c192
Date: Wed, 6 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657138012
