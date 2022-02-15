Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4D91561
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644932784;
	h=To:Subject:From:Message-Id:Date;
	bh=l6lvgGV0gojbkBtsWM2XoQMA6gCMlK7/k1gfQzAF9jE=;
	b=KDNEUk0jZ8a8qKtvykWso2VnqZruxiOyx7nJmVGmeE4PYAswGiGF0YUExzLrg4hQ
	nBnrQ3+UpmGJMrzqCMVGfQolIaioN2pEc3Jr/O8Gf5U5IIOUwohLYyGwqe1FEUaT3SK
	EnII+rmnWEjOHYaFfEutk+KFExszLF2D/A7fRbqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644932784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l6lvgGV0gojbkBtsWM2XoQMA6gCMlK7/k1gfQzAF9jE=;
	b=hGkOaQP9p4M5waSHlKrW+M0T/oTtQeBEJDU6P1GniSxWV5H+keyZJBaR+OUD+F3g
	9fJb7MgXchg1yrLK3W2I9pXlKXjrSW8CKMVnx7IQzSv7NUk3Voy+N5y3kxTap/inD/J
	ArshESQjleqIuaZuqULIpfz/KggXHRczdlAolvOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efda262b3-02dd6be3-cfdd-4de1-b6f9-d79ff52dae52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8a25992a54d77a41a742cfe31186db5c6495df44265c3ee3dde4ef73326fc24
Date: Tue, 15 Feb 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644932784
