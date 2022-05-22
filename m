Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F977C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 17:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653240060;
	h=To:Subject:From:Message-Id:Date;
	bh=F2gyxceRi/GtymS6JyPh0lj2TkTtHjO81w/y05lD+VI=;
	b=fF/22p/D4S2ikUXNzf4YUhXbmhfiiDMD836aVJ/0Y3uGF6VgkYwdd29adLueUxUe
	+4R3tWw7wGaTvPhfd8wQM6o6p5Azn+vLEU9+65Qw5h7mK5JdQgS46+tUqEFm1Hp6+fK
	0ISHuFBjOw4y+B4B6V6wfcg0b0JRt3q6LM8GqyNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653240060;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F2gyxceRi/GtymS6JyPh0lj2TkTtHjO81w/y05lD+VI=;
	b=hb1SfJ+dE+3zaymOeZHswrDMmcQ0/ztT2SWj9fg+u1IAhhez9TSt3vbMS8uR144M
	S9gQv4MUX86DAvovY3RcF5xjXrwdDVCBt6foms+gYXh6w7WEZC5WF5tEJ75mGhhFu6I
	RExZgn2sVZJOTQXq4cgvCm2Ge5IQNtWHq7u7RO2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ecc955ce-09dac72e-f1f6-43d9-9018-ecfd39382856-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cb31ef24dea2d82637563cf1bc471f0b478fd61d5edbc9626c35fe19bc8f649
Date: Sun, 22 May 2022 17:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653240059
