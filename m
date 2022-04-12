Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15A6186A
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 00:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649722259;
	h=To:Subject:From:Message-Id:Date;
	bh=OKKntq99VSHF3AGTz8BgHjCfiwXScuJH5llGE5YQ3vk=;
	b=Rfp8AvXrEX/nLgTN+ZieDfsHsjPzShFAhCRYOKoJiQXE3gxB3Y7m//04DuWpTczb
	mJT9mghawDmYShCmlf//fimI15oZnA7OLZ2SJQYiLAdg0OhPsHRkNQI7gtiC8VrpAtc
	zHrwfqNLPQp6IWdk80EW6pmM3A59/4/A1nM6aHTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649722259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OKKntq99VSHF3AGTz8BgHjCfiwXScuJH5llGE5YQ3vk=;
	b=KwYjEj+Qps3VDHseHmXWolhOGa07oYS7oBL4KR2Tlv9CIiN9E+fKhf1YrYhs9YnS
	DDISpnwGmKGY6LtyuCyteUjQ9ucapRlAbkDI97LY/67m512zitNWlTk/snOAfZHi4fr
	kRba7AV6bCyC7q24AK6jOq4GWCtBgLzf3Xg3MeNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801b1bf3ec-b0b633c8-f734-4af2-8618-b5d14479c9be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 474bf7d98cd4c978e894ca79c94c4e33667ad5058369f964efd4b772f6e9e3f8
Date: Tue, 12 Apr 2022 00:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649722258
