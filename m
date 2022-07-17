Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4022565
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658072812;
	h=To:Subject:From:Message-Id:Date;
	bh=pHBFAWX7TeeysagSn0sUaSdqNcZLhyNCqPGXS5FCuNc=;
	b=ENLuMlOZPXuVc0AVQ+Ec6fpZBIs9TR3od9Ind6O//6WNhI3e3jrMCrV5zusWUL5X
	4GJ7BtyIL7MxfQpcfjVvdY6hjb6TFkHArfxuAS5FOjR0yOKc2/t5Y4GWSdqCs20k6wa
	vRP+nzSeh8P4f1PeP33uM+JsWzrhvRjuvLsHA+WU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658072812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pHBFAWX7TeeysagSn0sUaSdqNcZLhyNCqPGXS5FCuNc=;
	b=VspQYNPDnNXEovZIVmlxnAV9FTN0FsLw7dkoCsgAfTioGza559Qp+KRILK6A5ayF
	6oQzNbD9xuvG5ge+e8CRtMdrX7lQIAsh/Iu2XA9MDvzz7yPJ+L0nQ96GkcOcB1+Yt7/
	1YFQ4kp44W2KZoS+c+W+ZcUk8UJzAaHDcn3gq7y0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820cd74bab-20127f2b-6ff2-47ed-b126-83b95ab63990-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fcee4f08d65b9bc05dfac2f2f562773c978a5c53647201eaf90e86191252bdb
Date: Sun, 17 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658072812
