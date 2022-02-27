Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790B87B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646003185;
	h=To:Subject:From:Message-Id:Date;
	bh=u4YVhq87QudI3R6qp/f0e3YbJXI4q8CW6Qpj+5iE6MM=;
	b=U7lQXIJNlTJnzUt9s0zbxtSBpaPuxoZ5eGro2fip8NQNjglpe1ZTn4i9bke7YxFh
	YZQH7NeHpP85M7B5DA/2tA7cYwqcLQ7Sxbx9wQBQ4WjQUvaqcdgl61KUh7Wf3UxlZvH
	lpLoYqSdAyJnFPpKTYglQ3IOjsrNycsnFrlAH694=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646003185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u4YVhq87QudI3R6qp/f0e3YbJXI4q8CW6Qpj+5iE6MM=;
	b=aGLH72qI7hkWwkHY1Uxz41704mYwsh9qhmUw4EdlyHU8y4JjRmpoYCfPeezOByxq
	j0DiwWDvS+Dgx1TSgWr6E1o75q1VBTibBCv9LBL7c+aaH3eAmJIR9Jyiq8YugjTyVvD
	zdforKzb4OqI9m1arXMKzM8zxJhkzfcWTUebcVog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d6f646a-9f43b9be-46d1-4147-a0d6-ee6c914c6568-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 122f37094e6c797be9f46707e0899905318efa8984f7025412549823ebefbef0
Date: Sun, 27 Feb 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646003184
