Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356C97B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 09:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655632559;
	h=To:Subject:From:Message-Id:Date;
	bh=ZLz65h2dNgT5VXQ/1W8WMnBD9vDt1BKei/WWNZwnrIw=;
	b=JcHEYnbBp6RM8rrhFsRo71VdLvgeAm4ER4dhxz6ZIyRTiaWbMkNEBLJjJcMW6eyo
	T40IJOwq0I43BH6xu3+0ZKgdrkBySk5NY3+TJGeD01LfF3fFEIat3sMULhi/pO4UY0H
	bgy0nr5nisXqLmo7+Z60HLQCpGZJvVuC+tJwAcR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655632559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZLz65h2dNgT5VXQ/1W8WMnBD9vDt1BKei/WWNZwnrIw=;
	b=GXJevMtdsgmf9gJ1Unx5DhpdZFwymvKBdfvsZHdR5wH7bvV+Prhr698/wjow5ulS
	U9f6DfMMfJaOTkQ7Wuh5GDyUe3WKNm9jCo3PE0j7c5WdujtIS2Pqmxbntpq7rm91Etb
	GYsTO5hhXZ+iUHq8krol7N5z0nkq2Fqb1DxRb+fo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b63fc7f-40d981f0-c3da-4c82-8a92-30075e46f384-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64eb040d445a0f663ca086a1d7f0c36e73b8848bdf08f383c60a908069e75dde
Date: Sun, 19 Jun 2022 09:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655632559
