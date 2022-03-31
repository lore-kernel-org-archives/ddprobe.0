Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E057E0
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 20:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648759139;
	h=To:Subject:From:Message-Id:Date;
	bh=AoRSO6AVIT9cQF3FiqLWS6W7kQ9G9GSsTDUxnmFESSs=;
	b=Ejne/WIMNkHscFgtYTLO9VVPIjpC1MuUzJJbwNYrJR5BO/kU0NOF77+MRfPm2V9y
	C/Ty6HN1QrLk8SK09f6AGkx5n+eTUXnCACSR2TOheBuKth4pZMwxUZSvunpd83xlxSS
	A0AFghl3RJiyyoqWABZct4oKbPBbZcSBRFsXYvLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648759139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AoRSO6AVIT9cQF3FiqLWS6W7kQ9G9GSsTDUxnmFESSs=;
	b=KHtgy0k/uIiO+j7PRMFrX7j9k7biY9ybxwBJC07TgVFwd3UNKSZrxNN827V9xHkI
	DCyPv6jHRzoSUyEDRTFAdsNemtdrIxx4d1xgKSOP9adH3Hnau6a2MPUwsp+tnK7BIs2
	DwybsS4eGU1JbIj/IhLPHmEfjBx6cKHqhSjBh++M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe1b3e7db-e47f4c0b-6b76-4d75-891e-fb8d28373c23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc64c5cfd20c724586c1827d93135ebf2d83c1f3508acf316c1c3c1f3bb1023f
Date: Thu, 31 Mar 2022 20:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648759138
