Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482727B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 15:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648653658;
	h=To:Subject:From:Message-Id:Date;
	bh=O5VGdahtVeczF3A41qTO5fY5vagYmTkHPXIYTV4KrXU=;
	b=limrvvqIYhJ3wjR5tYF0z38U4xcQtioxGv0S02lsiKnwaEe6CohQxFWJvfA4RuhV
	qyAp6Ffgoxx9fNbM/Gxz3HFo1vR8QaDjM49HF7wZLZmn8CP5Vqyi8MP0bxiPZdE4vq4
	2Pa0oD5189A/apRyvoDZoDcEbAu/+qbxKUiG4OT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648653658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O5VGdahtVeczF3A41qTO5fY5vagYmTkHPXIYTV4KrXU=;
	b=hl+Rb/uUHUKcq7nh5PeS+0l11wkqEiMeTfVI2WQMonWE654ZEV18j7RsHqv8a0Q9
	3kbbmeaQl+Y5SvBhBSqGkhoc0uZbIvYjeUHvMPE22sqgPvXNUtI+ZKl8FR0nBCDUs2p
	m1roCG/NwU89dfPQQ3LD9344a+rVjN6+cCI2B2I0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb6a68a9-1981976b-2c44-477f-870e-43bf98c914c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9e6f24cfdd1c0fe2868f59e0c7c938e0e8f020135c637c4e7af515a144a6da0
Date: Wed, 30 Mar 2022 15:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648653658
