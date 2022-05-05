Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D852568
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 15:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651765618;
	h=To:Subject:From:Message-Id:Date;
	bh=SUFaXDRFWil8xuTo82hHMod0RZows+kiyNx9//fHidE=;
	b=K2y5oJGBszXgWh8bWR7OiFiBoNv9oYFYy4Eb7Tq9RpTxiaEMht4JZUFMruIUmMG4
	0qlkrrvU1b27aGauTI96zkhuzrLJRIEJ/gLfBrEZl2L4N2F12V1a1tvxxNcjyBj/aIW
	Wd7jrXlRZAFjjPwnmihzIyBqhqvOoHaJ6ymWbwhU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651765618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SUFaXDRFWil8xuTo82hHMod0RZows+kiyNx9//fHidE=;
	b=FzWxBfAkSK+FnjnmOPBcNcYQOxIqHw4V6pLleHcOFSermH+ZKQm37hI+ozGSGMD8
	Yj4W7VlxoRU/7UYF42MW/HaJRmZ9z79Ust2/G/XdN9x9mVqP3CqZ2w7Tx6UjllftZR4
	dEuFjc8ZeiBx2bNUIgPH55N4zQ8225NCOAbdc6Qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018094e7265c-1cd1c405-eb3a-4328-b9bb-a00424cf9745-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd4a325c2e395675a0ecbafdffe0ac7f8a1bac2125b03aa01d12ba15787df102
Date: Thu, 5 May 2022 15:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651765618
