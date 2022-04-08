Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD22D2564
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 23:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649459758;
	h=To:Subject:From:Message-Id:Date;
	bh=R8awNlSOGw26cTd6Ci8EX4D3dzbuI2p2zvVS7bG+o/U=;
	b=YP4mFiuq2vWBa8cQNEahrHudGQgbn02wsqEfpNbIqVTBvYkMmxHcQXNHRocwSf1F
	gnqcaPMwmcRUB/ckgk+BHO2uz6SFvRZuYfZRR+KCWJjkFJGMhtYc0eWtjqiVhsQaN9S
	Ul0JEU+mstpoVU5OhI1YN6qOLM3hRNRHY0HK8HaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649459758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R8awNlSOGw26cTd6Ci8EX4D3dzbuI2p2zvVS7bG+o/U=;
	b=kEsQM6SEuvD1eYoRzuokS/AwETnQ+4Eiu+OwDYMx5dcvFZbPv7FDIleDI4DaRjza
	O22vC/+XzgcbBRr4Hs7drrMyFLTNTi6iwJBwwOgaxNaLyHgS2VzlDd44J+zqcwpqvUm
	2+hgHCSnslTIvXBf0OqF/1JhQ5o1TodxurCWNWU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800b7684cd-bc92d357-91a2-4aa8-9d12-692396de0f8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 815feb88cfaf425001390b8824290ab2e455d5ef21ab24a818015deb048bc522
Date: Fri, 8 Apr 2022 23:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649459758
