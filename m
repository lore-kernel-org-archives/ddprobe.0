Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CD43204
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 20:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651522618;
	h=To:Subject:From:Message-Id:Date;
	bh=S397LIWPjl2k1P95FSNcNOIC79o5Zd9pQh3M4777UqQ=;
	b=LZBgPruXEDwByBSi0L9nOEEqkWK7I3zD6O1IQRfJrWNORoMwCgX+7m7jaAjZtxnj
	ynajMT3I5PDUh1uHIJb9WnajZdbL+M91HYWsSZPw9vvtzbH54Ew6DDXyPU5Pp67GFgA
	9aGiv4dTn6h1WgPgmJLxneCSEekhOvLjVfIZCI3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651522618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S397LIWPjl2k1P95FSNcNOIC79o5Zd9pQh3M4777UqQ=;
	b=YvZaUHWPF8JAv5tjufgp06F6TUDBxxnWA7bygovHwK8NutiUBGFf0ou1l+xzgzOI
	1ZUgYk3xe7OAEwOHuCMbZ9GAg2JuB03QA+alTqqu5qttjjH1emw1lsQBCuS9dq/CTD8
	FoyzjiNhMF4LoWleH7G+pLNtQc7AKKuZ5iYxMIQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180866b43da-1580c12e-ac40-4004-97aa-39e7910f3e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5882fa9b5c468871fcc35f2c39bca74ca7b00ae5cf60016fb1e4d93df595379e
Date: Mon, 2 May 2022 20:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651522618
