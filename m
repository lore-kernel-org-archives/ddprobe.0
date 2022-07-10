Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422DEA52
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657436212;
	h=To:Subject:From:Message-Id:Date;
	bh=r+A9LnwXIhxNMDpm997GdQPCvWoswIpXkuBYm3HPl/8=;
	b=GAFESyYthS0ZyWKoEg+fXRZ3qiMrheZJvZ5McN6UmI8yPIsc24z5FpypdwPkr4rz
	OFfZcIReFB7d2rY8zNV34T8VGiHJB3RuN+sXWPXGIMMIoJBpxZmS1os6URKx8g7s3h3
	7PZzG6Jb0NxoU+xQ7QgJR5fFYacH5a5/JTnDYZmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657436212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r+A9LnwXIhxNMDpm997GdQPCvWoswIpXkuBYm3HPl/8=;
	b=ZK1xXPv8ijE/XMhLOvhItzEZMd7EFVenF8wXw7SbwWRVhCV3q6rf6U6GMPN4Nf9T
	hkCpAp0b0MXl0zPHJNsMymSGCHFOeJhwsu/sMk6qfd8VxnnbSi5R4h9eW+ik9ARVGbe
	i1IaqijJ6zaYG7LuSKqTxmlSFWcQ6ufE17oASNeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e6e58c68-2530037e-23f8-487f-b3f4-b04cb39b5f96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2b4ed5aa0f326dec087713969326661791277a1b31b8f65324f8656a4828608
Date: Sun, 10 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657436212
