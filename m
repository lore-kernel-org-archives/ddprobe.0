Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20F23C02
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 19:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655927939;
	h=To:Subject:From:Message-Id:Date;
	bh=47w6lSDqFNH5xzY7lapfIquuahMnqHjgwrTqTNMvC1U=;
	b=g+lhKuPdF/mlJUUgUgtHQrhw7MFiR/NwoGTeJXinrZpep8eNURFbzBFNhXAknvFR
	IeVhkQExAbTSvzt3XVqZFZ7FnoC/+KBmmGVBHSXzPnsvruCnFUZJ3ptxVXmvVH/ZIxj
	XyvEasEXc14IwsB87y1k2ptG1SfnBvnDpCd+TJL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655927939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=47w6lSDqFNH5xzY7lapfIquuahMnqHjgwrTqTNMvC1U=;
	b=C8BDHqSM0chGgEmPOux4cUfq780gZPwTZQ4GmLKEn6Tr02kRRXJPtrV3kvLbVREg
	7nYuvEqMMeGnIVlRhUiV98HbfIJ0mUqM2oAcSMprTP1cNaOvSG9yBfYjAF0+2je9mXd
	wBCX5zI3QEbVvHQfEL76Aanv5oQsnfYLGE5Wa3lY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818cff20b9-28a0e7ba-2db7-47cd-8b7c-e581f43988ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79f756ba792b57b622d0768bb2070703970fed8a76799e0e69fdc699213609d0
Date: Wed, 22 Jun 2022 19:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655927939
