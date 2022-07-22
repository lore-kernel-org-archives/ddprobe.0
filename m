Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CDF15A8
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658498813;
	h=To:Subject:From:Message-Id:Date;
	bh=3qQJ7h8hrR1n26itRuYvs7lzJWkL5JcyCI4kl9YhLEQ=;
	b=REWxP+u/lZdm92c4i8/yplOA7+eggU/uDoKsreEhoyd3h5fBXQz3jiHA0wk6Pkli
	bZLQGEwISg0mKF1LIjnEns74gEkA14SzOOw6XWJRLzvMurFzBwXA3oQwEIq4Y0ETxXc
	8EJKYjZl9UcW8+YlEU0w9UQ7CofF9cmvlBN9QmxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658498813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3qQJ7h8hrR1n26itRuYvs7lzJWkL5JcyCI4kl9YhLEQ=;
	b=j7FArm1t3tVsX36T/46HBeI9AiLGTyDz5qPFwW1FCEeiOYs3xUgvXfRY8syCGN3O
	1d6QZ99kHQDnKF6hLJZDWr5TDG52WzV4MrmJB1gJTBPU2AMVHwGZINr60NkI/qKjqca
	Fru3EA2OkGjlMVR9KTnAiMaLQXSVszzzeY4obePw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182263b899b-05c96559-9cf4-41e9-bca3-1c6d705461ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76240a0bc2276d3b1924bebe429b226a6c078a4e50b9477da91135bcc0c6029a
Date: Fri, 22 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658498812
