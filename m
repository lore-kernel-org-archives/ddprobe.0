Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133D5EA6
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658138212;
	h=To:Subject:From:Message-Id:Date;
	bh=hkRpV6IKLKLljoSXzHWhhcNRo8uUWYNhkaqJ7cBduFc=;
	b=YW97HMoFzHF4hW0fxknX36QZSb34a5dOOPB0QXgocjVcZFbwzMO5EZQCgd1IP/7u
	BBGYMPReE5WzHX2SS1j5yECCDrO2+yfpkfzEPPcBbub0LmdOXduVXDSz3BW25NyFNri
	7jniJSH8E6AI/3EKhB8ODC8C5fBA+c8zGKIs8oRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658138212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hkRpV6IKLKLljoSXzHWhhcNRo8uUWYNhkaqJ7cBduFc=;
	b=HHd2UkrzyXYjtgnEhVCDkFguENa4MM+9esKKMmfm9fAm6P/mjveocE/fGjQdgqV3
	VzR/ew2yKpSqyA8pToFeorF/3lujbx1mghJIUN1aCDSNc55GZ8ybWqOkrJfLmfqRYT/
	3wwcfyoDTraVp+ofiz45NlCeuwtQUcO3b1iDDEV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018210bd3804-a303880f-caec-4341-8083-d106b93762d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66a8074ec8fb8ccbf82d3b492f96aad51b79c69324923bb18de6c79db7530e7f
Date: Mon, 18 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658138212
