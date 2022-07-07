Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7137C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657208212;
	h=To:Subject:From:Message-Id:Date;
	bh=2nkXE/8ouQz/Jvxc3QyCChbXAyAOTlqd5YspAYkg0cU=;
	b=cEa5JeLO5v5blUp7Z20+iVeHiJxYn7LUm42SEr/gOpYsIf/zET/H6jWTIbTNQLnF
	QCaVSz428b3mHGu0NBctZg7FRR6HN2eA7Zek4hZNSThY75joPSHWdkPq7zYoBj60LYZ
	QfzRNAUxYoFseqtiHSGUbMpSEqsp6DdKzQGGRNao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657208212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2nkXE/8ouQz/Jvxc3QyCChbXAyAOTlqd5YspAYkg0cU=;
	b=ezQ9YVmyGdPuMewESOyRC1jYma5Wz2D0G7paLSlrq5dLOR2IgSFBKoppMn9YbEAe
	E3W/DJtcYSgdnh5+J6KYaixyUErOhDKRqmaI1DOkiA5t1WhbRlj4am6S7vnmZZ9xuql
	EpS8FZ2ClK7VrfPSct4Fxp4uZaX9J5bpZU7KcCr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d94e8b29-01ba4f6e-02d8-4b79-9712-d5f573928752-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f56b4d81ff36c95513c61fea9f53ef3a6e0f78b5c56c8ab559b37edcd8ad7e52
Date: Thu, 7 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657208212
