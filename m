Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627E9EB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644882684;
	h=To:Subject:From:Message-Id:Date;
	bh=vIrkmg1zwvejPKe8GmbAp9TgKyGBLvrWOsb+54g7ZWw=;
	b=cauV+zaMiJzR8J6JhDk9ac3xiCWvu3HXd4dnCo6arieIf0KHqA3JkElYUujXKA8x
	kYbhHV5L4DtOlNv9i82uhsu/uM/mE6x5NEeA+oE8EbkyqgAF9hTrW3qZFKj3N/e8y8k
	4bRWyRvo6bxQqHw7gc5PboJRCXCXm+pUmls8g9rU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644882684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vIrkmg1zwvejPKe8GmbAp9TgKyGBLvrWOsb+54g7ZWw=;
	b=is+Y9WAcRKpUhalK60S5OtdCsBlzre/oX7y1LjpEuvLn6p6eJ2TlS/rG/ddwieQa
	0fXjMaUCJ7BidIrI4KqFIpTPVB1y53Z6f1cEkiWi+qjUPxsVhy/wMaBWzqXwY1B1yJx
	rr+3DSlRCzbrRLa2ARTekTCXAtgdRKMDmZLlqR6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efaa5eba0-df91091c-e7dd-49df-a9d6-bfda415d9c9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5c6265afb9e47da22cc2839d1d20bd9aa3a35cfa97419a99c62fc07c4723707
Date: Mon, 14 Feb 2022 23:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644882684
