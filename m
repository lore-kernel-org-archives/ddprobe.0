Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33237E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660429853;
	h=To:Subject:From:Message-Id:Date;
	bh=9f3An47RxXirysJN5PGlVOb94U9ngOuhMlVGBjPrlLc=;
	b=WheChaLNka4CnHm9D06dzJeS2mpV/XxBp2JvCZy2WxEZLRZCnNnYArDrBnIkzOBt
	7azcPIR0i8QppSRhtFpxWhLaB7ZJqNfnJ4qFwbt/JeKtAlPwO3HzBnyKqIThJP8qHp0
	H2so2wO+AufflGn2F89VgfwpzDlaRkdDeCWc1ml4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660429853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9f3An47RxXirysJN5PGlVOb94U9ngOuhMlVGBjPrlLc=;
	b=f0w0xr/g/fo/Ar4Ckdc9iKEYnMcLkhG7J5uAeKGUwNjzQeZEvJqWLT+Rz/9o8+rT
	BSlRgAhUGB35zDXW/bwtqBbOSneyLuAQhQpMBQQewjzVDgj0NYwjLoxUcSB6yvI9/Ba
	535jnPwn42eEf9k+BaMSn90jksDXoh6HyE6xv150=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829954df5e-f5aa4bb5-e468-49c7-bb7c-600ab6ec0d9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 801227403afc6277c5744ff2b3e05cc814cd598cf877feabf38e44ffa65d85c9
Date: Sat, 13 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660429852
