Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7547529AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647777685;
	h=To:Subject:From:Message-Id:Date;
	bh=n+L/QiMlwS/2omg5J+MrDPmXqyopz9CDr8lqxkwwnSw=;
	b=S3KkS2GixElskW3fOBFmRrqOWqnyWpSYAgmI9Or4BqJTl8jLZ8ZSWc97pHRAvCk5
	XzjYuYjHmu8R7C5KrqYA7ir55ydU7HqHAtoxKZ0vNeVOp9XuV/9Gk1K588G8QtouSo5
	AiRB+4n94yJCX19JfPziK52L0GiDhx7wfzGIjqw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647777685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n+L/QiMlwS/2omg5J+MrDPmXqyopz9CDr8lqxkwwnSw=;
	b=f9o6rQcKPWpiwMRBhuKCd8DeI/R30XVh6eVLT0e16y4Dk95lxVUfIMMnf0GdEgUt
	An2NQezFLmUL0mDCroZoKCpTHj22KXeqVelzpzZfekrMHrf4VVnFAVoS23bGIuwy2Qa
	byHC+gjRHB3s5TdDZU7ROxRrbgS4mDb7r/T5qt5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7341ce6-8db39c49-cd6f-451e-8f1b-8ea63eae448e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6edf2ed6efb249fced6edc6ce823f143e1e9524622a504e07c033e76f2c50cc1
Date: Sun, 20 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647777684
