Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C4D3D62
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658247412;
	h=To:Subject:From:Message-Id:Date;
	bh=4XLzWIn2b5eWzocYqJccIwbfIEouyxeLLX3Aju4C57s=;
	b=j4gNzF29zlBthea6TWyQpNTOZYNH4pr6ELStfMrAHbHMx2ak59lZwqMHq+bQs86W
	qqvidFmc3J2udz7ENxXbXvP+YPCZq50YZVtsQk0g1QqfwJziHzUKyVdDBSsHv8Y8Fr1
	8KN7D3ReOz96lYDpfZYPKgeXKu4ImCm1ddtkDs9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658247412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4XLzWIn2b5eWzocYqJccIwbfIEouyxeLLX3Aju4C57s=;
	b=hxUgTNqAcaQHmWr3XIYo8rK12g1QxPqKt2JX8lNWWLkEGQD5Ve62AYb/jR9hKiCF
	IztJhctVI8YMrzucWMctt2fw6mEduoCVtVFvr5zN/6iwucW5i7Ph5J7R+R4xYLUnquU
	fTtYbr/BCTlNiKSNjL8w9BWgA9CuxvftUL9/8AKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182173f7a79-532577ad-dff1-459f-8db6-e8636e4bb8df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09db1a66e90294c132afb50302314cc55dce70c3f6a3ef76898403ba1dc3748a
Date: Tue, 19 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658247412
