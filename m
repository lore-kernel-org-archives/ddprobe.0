Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20E542BD
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647980485;
	h=To:Subject:From:Message-Id:Date;
	bh=qRzPSsEzMYtnqFZUN265jS+sfBFPVLyEpyefsJ1J0EM=;
	b=NLMj0r3RHf3+88OkvD5rHwhO2vB8o8Zxx3BpquTLMK1suTg8xB7bnCwNLAtSxL1M
	og76C59aZiwgS5ipEu1veqgp+73OUMDzOW96Wk7+y8MPo/RP+tXUFJbbxoJ4WXhJUmv
	CNIIawhIqD3PCZL2Ff4yUF/y0mrf1MTUnVRgsCgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647980485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qRzPSsEzMYtnqFZUN265jS+sfBFPVLyEpyefsJ1J0EM=;
	b=MvDebB8sPlLbmCms6BXrSH0bVSrq48GqZ7n7CrzD/IeP138/V0zotAv2exd9gsZl
	QxSaQGqH5MKWoSFHkb5pgNj5lOh+lBIvGZAsLj0NJxxkQhw/KFxPPNEI8vAF5fCmaKi
	kkNA8da0cSawKVlSo9HQbflEZIOu2G5HpXLnapaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb34a98c7-9e770389-48df-4030-8833-9e80b61b4a87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aeb479cd74c5c5641db432c54ffb353b80ffcbea63c7ffc960cd2e0076b1189
Date: Tue, 22 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647980484
