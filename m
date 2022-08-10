Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF22184
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660099852;
	h=To:Subject:From:Message-Id:Date;
	bh=hqgZTd68YRavy3k9SYm7ZIzYBesDykqIzr06Z32p1NU=;
	b=ezDMhVuAdU2kM7nUuoplNA9ylpD5GPVXjNB3TDbzmT6DPpcx/0MQnhdNbr8SO1me
	TXM5ABMFYr2uUkYipKPSj5FMI95VcIyniAkVz5Hj2ZR8cSBkenSFVhLd6LmCJmlO3iB
	9Xwtv+D7shri5XECm/DH/rq9LqY8Whd5IGdJn7ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660099852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hqgZTd68YRavy3k9SYm7ZIzYBesDykqIzr06Z32p1NU=;
	b=Y+T3OfU2z/jRXvu8dCzfmfSOrhv/JlYbzl2Odq7iqxApcmVbV7W3jXCUm4v1lwDt
	gUEcXrmJ/BKacDHehs0OszLs07jVc6gLxWbDDCBWdMwUSwM6xpgRCuJInSQVKaUEFor
	2JgvCLjimWNyiI95u2yMovQVyKJ37agZzacNgKBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285a97943-6bbdc2ba-0ef8-4cb2-952c-cde015dc34d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4d874580ac1456cf984441059e244671ed3f4c4a3eafb5656abb71007b1651e
Date: Wed, 10 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660099852
