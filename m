Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8E44405
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658318812;
	h=To:Subject:From:Message-Id:Date;
	bh=jDrs6YiTxQIGd2X3KnIuHNVkq0XUbIQroMAw9xkkrEY=;
	b=kjnL+rWIjkt1TFNAEgOe8O85DfNO6SlTZLpMNHZo0chSaYcSa2b+Bldk7+k5pMSj
	PJJk0DFdYursh00weOO3o++PuVDMjMrecVOAvrKI3x/mEM3XuJs8kzfv2l6RrvI6vHM
	ThLPgSH9l8VWI7sCHcyaVr9mEop0QjdikqPoUhmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658318812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jDrs6YiTxQIGd2X3KnIuHNVkq0XUbIQroMAw9xkkrEY=;
	b=Ez3Jv1xXrvj43SHpQhLO0vQ1GJKSpKiVFpKLr9zzBvJJ4d+B9z+5jtVlSM10vuKr
	g/4OksUGojdRPPU4vP3Mfga+cD0KEP54V5LADz5DY9rm1GEpuzGsy6dZ8x0jF4bnH4O
	ppCihbOpC1PrwVzGitwmdwxzpwGJQHVDdn8K4RdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b80f47b-8b3336bc-2693-41ae-ab04-9c87d4bb8e04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dbbc4ed29490bcfeef9a71ac31dbbc407d41f1f00b153c78c84806eb8012797
Date: Wed, 20 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658318812
