Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2263862F
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657966012;
	h=To:Subject:From:Message-Id:Date;
	bh=Q84yoQxs0onAcnnzKnaI1klhJ/K0fmZb4eFTpxC6pdE=;
	b=Nx9LpTPpWv5h/sE53fi1IBqWVn5Q28ns0nzqn9s0IIx0w4s+kHNQ8mQV+XtyDZgt
	HOleWHJm72h13f7xxDgp18pABLYCeFC971fQmnAavRpeeqQaTwNPCkFvJUdYSIbXyBF
	vjQOR3HRW83nTGLdOsVCDzsnEybn/N6BchjsMMdY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657966012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q84yoQxs0onAcnnzKnaI1klhJ/K0fmZb4eFTpxC6pdE=;
	b=kx6nxoe4krtR/KUl4zKXh8TaHaqcS6GXbhLIvEzQSOQCbeCA06tPN4zYFtaftV6Q
	vt27gSZyakCOL6ZL09ZKnWJF4NkGmnGRATRQOttgH9oLkwFmWoT/JR+D/ZkRjn5Q6ts
	QaRbI10lXjoAEIt8kVEnAFZXAwNEtzA1F443X0Z0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820679a78e-280c63eb-66e2-4b2c-9d58-2a103e753347-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb14965963e8d3c05f1abd65b3a0954f6d50fc74ec0db904ae0f06e564b2bc12
Date: Sat, 16 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657966012
