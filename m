Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37FB816
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647156985;
	h=To:Subject:From:Message-Id:Date;
	bh=od0azAAmF7iMWhz3TW0VY/ihdY/vjXOofbyHPF+/txs=;
	b=CfVd8rktE255dUrXQaY/wxudx3xypRTnxc8YUsbVNGolfeuCVEL3uDS/roORRBHp
	vdQs7UFDNTHYE9/aUzONZ4d+eri/xnSzP6BiKKmvIV+CfzFhvwkqaof/sczgZQUmHZt
	MLDXBsssuU63nOAcPhQ78qomakXJdZUkTjcfo5Bw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647156984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=od0azAAmF7iMWhz3TW0VY/ihdY/vjXOofbyHPF+/txs=;
	b=ase7T7TiwJDyVwAoG1vQ1GA58jzvuAhBsBXccBnxSqxDFFY8FDMq7FB1bBRKNC/7
	HFkMxMBcBgj3e46rShGQJfLiqEad6X/uKilM/+lL2MQogmalU5TW3/LDbk+1NLOTqSY
	/Ho0C6Eo6dTUhMi91shUfFcu9VY4w6/GwJcEjOMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8234fbbe-19b9b55d-c94d-46c2-a540-947d17c84658-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81c02c003f16fe435acea0ba50099aebed7cfa0bd27de704937370d1e60aebbc
Date: Sun, 13 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647156984
