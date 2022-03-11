Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6F0211B
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 18:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647023485;
	h=To:Subject:From:Message-Id:Date;
	bh=4O3VU5eaHgxiaW0A88Ut0nttla7v64xEyZv6D5xcMcU=;
	b=A/tw54N3QYKfz4LzW4jjqELQKg0WeZdXJLGaC5+UPqR4rrZAyEVSO9MKlOcq1FZE
	9whJDHIcKy5YDVssaiaOElIqU8yTSbeM+aaiddy5BMi3MrSHP7jkMrYcuD8ta/hwUMJ
	pAGwwcy6UTCuaS8V7DurSH1EUgqwHc5M5dsNgURs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647023485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4O3VU5eaHgxiaW0A88Ut0nttla7v64xEyZv6D5xcMcU=;
	b=FIsbuy4CvKEwMfsNzwx3o2aIkzmrO1hMr0vbbKr8viPXUmXcDgvw2v6wCww5cPrN
	eOI15xDXVxn0YD0ysaCdkmvJw7rFeZCoF61GLj1WBjXB57Egkp+Ql2W0p1nacF7zLP5
	bNEkMkVc5BKPnzJMr+eHuvsEEa0E3MbKPcVp2r5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a3ff04e-9477d6c2-1fcc-4398-a22a-cb5a54e9c97f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 684f5d0a2310ebb6e451be95bef34f215001214eef04325b1bb300f3f12cabce
Date: Fri, 11 Mar 2022 18:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647023484
