Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A097C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 04:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655179559;
	h=To:Subject:From:Message-Id:Date;
	bh=SkKVGYvdPVtB7el0EoW+PBHUB2IRkAyAdM1djC2Oj5k=;
	b=ePIsEoLegF0CWPQHBRun2drEuYLwdDsYpnY2xN13SIPzCKor8HBYu6WRyaZcxXca
	U27xBe2fdBLH0hMh2HT2U/AEhB32ObbkiKIsZH206pfDfYKpzjaAXBNnXPxURPySCes
	9qJHULqy3ym9HcnoOues0Tx0RyzjXhHZcBkBtRYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655179559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkKVGYvdPVtB7el0EoW+PBHUB2IRkAyAdM1djC2Oj5k=;
	b=JaPJuBguB4tHJPtYJ1cqfMcjMPW2pBZ3nFrKiE7rRK3246nOl/C9F1fJuXWjTqBq
	FDZIQWIgi34A+9ra5HnriKKNyzKkxWBZS9dRJpya/seEYVrKcZUzUqYNCEiC7frR3iU
	0NGtZd2MOPH2Po473IVUWzRjfITaB5Ttw7q3K4Y4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816063c156-adb9da9d-812f-4d55-b29b-8515b6711cd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 514b23b82a25255827d24afb98f7f7bdbf4939833c19c1a44dc71fc19112005d
Date: Tue, 14 Jun 2022 04:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655179559
