Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685E37B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656466012;
	h=To:Subject:From:Message-Id:Date;
	bh=vdl618gkzC3hai8bwLsqtsWPJmURgz2JA5fZIMennV4=;
	b=YOKPmHRhZasj/pQv26t6sSqEs+gauY+/5J2am1HYLL7u55gHbGm56wl/L06eOcDb
	vFvcQbSbKzEObGeeQuerF4OJPlN1JVhtX8a1oCj5vU/2i4XiwtqF7RYiv6/SAKGAIOA
	7kYXL7zQWqI6ZoVBpX98RbMquLQEoi/S1x6F1HnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656466012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vdl618gkzC3hai8bwLsqtsWPJmURgz2JA5fZIMennV4=;
	b=e4fE17/0HTUzjcTgcbyYJWq5BnCBDtFMKkiKhJq/SAEGQE7K2AX+lNmBiE9AYZM3
	54PxOU4kqFac9vwqP3w8ogamDX4fTRHp6QJh7EV/kI5l9hyAiFhPpj6IpW0roiWqbEU
	UwRQTi6mJQCzVSR3NR39kXN6zCn2S0wJrgF9oysw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad117881-6d744e25-e68f-4705-9f46-6739a150604b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d475817255088e95a72af0765af1846ab1674026fb7198366f6129831684b40
Date: Wed, 29 Jun 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656466012
