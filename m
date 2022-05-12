Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3C12F28
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 22:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652396039;
	h=To:Subject:From:Message-Id:Date;
	bh=nYUEqaLFhAaVYP2W/5YQR18ZVVZNoKV6cftST/uoYWY=;
	b=OmcscbtM8q3drPrygIsprSxvwVPHGVrIwdwUngP+iYidNSFRSkmSw1ytLFMf9Ti2
	WCGrGwfyncD8fZqsUziaoud/mZx6Uc6PQFldTzSFculzcDsdzSRASZQi6KDwdsTxZzT
	mHvAMwq9UEJ6ALI5cXiG9qboCyV3gZTvO89SsYnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652396039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nYUEqaLFhAaVYP2W/5YQR18ZVVZNoKV6cftST/uoYWY=;
	b=MVFvrT8kFElOG297LCHEA5FfcBU7t47MQAzeQhqfzVx3A/I788TuKvszxMNG6FLc
	xUvZq209WFXwA/btTXH4HAulUyw8/hWWIHcjEu8WAkKLNOf/mjZdAa/BDzSC9lZXCu6
	EDn8sARGIDoV6Sonqa7MsptAXLctokhu3UsFyo8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba7a9c3e-dbc9a846-6443-4f7b-83d6-fdfa85265625-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 813a8da865e1ed8de586c471b3d2973b8eb70638734d13a4b9b9625dd6455722
Date: Thu, 12 May 2022 22:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652396039
