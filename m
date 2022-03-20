Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F12F29AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647775884;
	h=To:Subject:From:Message-Id:Date;
	bh=hGcE6YGwzDh/sDJJM8SpGzowrk+Uoz0BaWXt3C1lh+M=;
	b=N0rv+koG93e26DK2FhqiKOwQOQWjrKzOUKabKuscLFSgRhO4atjrOSp4+eeTaonQ
	dJ1O0IaWxW3MnhCiOspNV6ThJCakfralrshfZFUXKfxW1n5hmJBQbh+w/dIi3E4A/wM
	IMaAXFtnO4AlmW1q1YONcH7L+rg2ZVwhcuxlkPvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647775884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hGcE6YGwzDh/sDJJM8SpGzowrk+Uoz0BaWXt3C1lh+M=;
	b=Zs+8UTawhIJqmywnR24DZjk/GXCXTrLnLlX9j8an7ZGej4CQVgmsafhSmomWzua2
	w1dQFTiIWxKWqzHx9JjUZlP4VF7qyfepECcIGlqyc3cAXDqC4b2LWxD04aeT2TaEGYW
	Lzsoc3iIaCnHwUNeYJaptjZyhAPlJyvWBjSfUxjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa718a63a-86bcf2e7-bbf5-4b3f-81b6-4dfc6eb336be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02f01c1953965a9b9b317d84005c1391c8a2a8d568c332140bda8b7621ef64f8
Date: Sun, 20 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647775884
