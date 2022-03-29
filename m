Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A79433C2
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 23:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648598278;
	h=To:Subject:From:Message-Id:Date;
	bh=d2UCE0KW230R1lls/7d5MKtnLikW+zkprj2UxUBi7pQ=;
	b=UOtZjPied6/yksR80LxVpg3DmudlLa/e31wu6SNfwJRoKzIonZfXccoLIS1rFU77
	8c3W7p8V2XzfyNzoW8TiUxe8BRVILdmHPxy7YuRSBT5tzTrbY5CiE38RKvJv9VYZ0v6
	40Iy60Yv6OR4YAlxYngGUAQWGwH3p9WQbN73Mz54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648598278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d2UCE0KW230R1lls/7d5MKtnLikW+zkprj2UxUBi7pQ=;
	b=DX1NtznYEZcsN2MZ6Y2jGX5yLMPEheZz8j3UCDhgbG/pJtjeNwYPGp4FPzgEl6Pq
	BsHZJR1BPNb4rB3x1WZkA7aOh/haqsEAqWx5OXyBpjJVZaa41xjlRmIgcQIiUOBsbn9
	tO4exIyoe8B+MYK9KW7I9R9HubyRdXEllnU0MpIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd81d6051-de6b45f6-2d0b-4c16-9755-d3f96c7a57d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6011c2f2222c8dc6bcdd108aeeca3aa6d54b71e65f65cbbf178db79ae71105c
Date: Tue, 29 Mar 2022 23:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648598278
