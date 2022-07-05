Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2EF2917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657008412;
	h=To:Subject:From:Message-Id:Date;
	bh=1SPUy9zzKfuKwNUutvYxh5WxYs3ZeC+lVxZrjVxZ9Mo=;
	b=T5b6gBHYBAcTR30V067aF1cVhZjlT7bVCdVZWqsdboLb22mp6D85ac9aQvXmj1PH
	FafajP3WfHckn75H0djCqsKwRDE1DA97NewVCtFsT5UFiSCXlefaeHFmntMpqgCsVrQ
	lGUNzt0a3IvsoHU8aMnfLlvwxqkThFTwduz0cPq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657008412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1SPUy9zzKfuKwNUutvYxh5WxYs3ZeC+lVxZrjVxZ9Mo=;
	b=e7gYSCWDqz7QAuyTGYPFlJnbzBUJw8Kqr20wkXzKgTOXvea2QC6UErbZHy2t0Fb7
	OQUSYlrn5/YIY3lnRO1KkQNyf1ZBg90spzTLYWaPOC9qVQ+9LK8vEvMkKBJzjRGiG9G
	QAHUiANP8e0sN+JQLc5i3fndvB0tVIpQ6YuB0sAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd65d668-fe3224f3-53a9-421d-a563-c3c07e67e94a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30fe3603d953182a1c9e0de58bf9a31cba772eeae65cd65bf4178d5a90da70f1
Date: Tue, 5 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657008412
