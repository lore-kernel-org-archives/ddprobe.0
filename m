Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8777B
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 16:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649693938;
	h=To:Subject:From:Message-Id:Date;
	bh=DWWwqhqb+YLMIauy65roXqRLQ69bF2NvFtROLjiF9sk=;
	b=GsNJ2wAcfTTlF/jHWRnbzNzAciDlUAcRFYKIXSqcgGcUNLndv9E3oNfFwCNPRq+j
	4GkMlfu8nKixROKx8onMS6WDI4ai5uNgDR/m2mTylPobzPurq/Ny3+kkQH1DFJQ2gn5
	SqdxvNUp6I6FBpUhI53ogQKQkI9p1t/ECdSb5tqY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649693938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DWWwqhqb+YLMIauy65roXqRLQ69bF2NvFtROLjiF9sk=;
	b=ibKhS4uNlzH8Sy5dh8sFKVkwYYmDfm3qgbE0/rlTdfuxcXWjXFUN5PjT+e17jtrB
	qF8ggn0uyIlPxzRNmddEQJH52R8eovkZGvHL66kGVMANbQ2d8YVSzhYi8kuHXXrueZO
	91fS0ZltjjVOk9B1BgYuBYm8auX4eSpf3je5DU2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180196bd23e-4c952ff6-73a1-476d-b521-10b7be52cb8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1340bac7e4f769fafe05c17dfa18fbcc1f6751aaadbef759395d0f93269c9001
Date: Mon, 11 Apr 2022 16:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649693938
