Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8BD361
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 00:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654992839;
	h=To:Subject:From:Message-Id:Date;
	bh=aEFMzunY+fOYVqPvz1mlLwbe+1J3udyXWkRzqOUzB18=;
	b=Bayf/Pl9CFBat5Aq60MRfXnzWT/lzg1lZo57buvb/MXJFxMF4BST933ohtkyQX4n
	ZUPnZfEKNh7quHLzgUzAZ8ytg33Qk50gfE3cZPyOsXUGBXRBO/fO9JFsmT2DTtmEOIl
	zc8mObN9AdSDy/gD/oC9H8Qfc/51Oh99CQO+ynRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654992839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aEFMzunY+fOYVqPvz1mlLwbe+1J3udyXWkRzqOUzB18=;
	b=ZC4Um98e9PvYPCtSYmXJpGoFGVuY8TV3WrjpQAxtK+PDh22eBP5pv+suMOlu/pYM
	A6BU6gN9Hp6AO+/3edugvww5Sik5qpSCFVEZqMKJ/3earK3fUVFU/EFAC9fCqdujDiG
	LlcUmtfcVh5QDuUIEzHy7H/XlrCgL6K0/McaSfjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815542a2a3-a9e3f6d1-c44a-4e34-a275-9870a53eb16c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 050aa5388e7b685e3773f24056d032bcbc5803edf8c99f743c26c726df4f4d39
Date: Sun, 12 Jun 2022 00:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654992839
