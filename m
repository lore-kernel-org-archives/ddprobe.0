Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4491360
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648016184;
	h=To:Subject:From:Message-Id:Date;
	bh=SCdXyenE3up5pLm6FgHMt6F69I75aD50uNqH197RAcI=;
	b=SRPWtXvsCKQaSvh9uzx37ib30b3/yi+x5SVI0H12q8mHe/BOI2toBVgcXqf4vgXP
	temRFWxA5hH7sFfoMB3ut5FTY6dF1vLBTbhuVZxnrAxRUY41agYxoLlHhPSpJUzB5WX
	u2J2VyTLD2jLMKcqbWBuf+b7U5Jw+sSn9n61TE4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648016184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SCdXyenE3up5pLm6FgHMt6F69I75aD50uNqH197RAcI=;
	b=VMxXQmjj+DqcdTbx56S7LJkuafcWwMFKtFZ7ohD3HEWQpR5E+Nk29gGDByyYtNR0
	sIa7pt2ShW4Je9NAn+Mn7KHSajKeDJofPwm1AxiBw4Qlr6otojmDYGY7w53Iu0lYP4P
	GVNyDgjYQIGb0F6Zo2Eq009gn5SfuACbv1rab0RQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb56b558c-c62abd96-56fa-40b0-92a5-c0d581921c14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68a64a60b6115c00195d92404fe93e43fb8ee4eaa43d681ee24b99729868df24
Date: Wed, 23 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648016184
