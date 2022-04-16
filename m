Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202707A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 11:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650109498;
	h=To:Subject:From:Message-Id:Date;
	bh=j8H2ACp4IwBfjZOXeK5MWkwXVMmvhHZZykYifp0z+zA=;
	b=CoN+vThvl44bC8H9Ed5jyAhmL31n5kY86cBFJ34LxmVyQtUP9/x4HMlEbPncHL8j
	T7/sxKcvGKJeEn3nItxkHcKB3TotI9tclcqEjzSA+dWQ1OatEZsCtzwqzxDEyVI4nlw
	IQnaIH4xRJ21QNswwLQsCaMkq+agp1OUi7TPU4TM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650109498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j8H2ACp4IwBfjZOXeK5MWkwXVMmvhHZZykYifp0z+zA=;
	b=RYTFuQHloKad+zvMZoJ1+98NZJa7/hNPQE2LCoWHHAf+kEXa5Y7w+pt4QeW2fj5O
	ML4d7VwgOPbBfL6lkleW3Am67tWHQyEmjAkxcnpTmXTvvgHyNLtQ/4UEEJJQ3Ckyf5K
	H7mJ6CjIitfkhl6EOUa9VwOkFhswnMvXZcwmlUnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803230c3c8-a0d15c1e-ca1b-4062-b045-9e719fdab20a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1b8cdef1fe5de9460fdd0cd562ae794a3c6da2147eb13c2baca4998e14d77d2
Date: Sat, 16 Apr 2022 11:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650109498
