Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E49C28E4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 12:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655381759;
	h=To:Subject:From:Message-Id:Date;
	bh=yPvPwWAl5DP08cSulEBghYwm8Eqo4f97HPS9GNXHJJs=;
	b=ZJ1FpLoget1+lhDR9d5hi04CklLzQhJYkpUvXFJOfhx84rrmtyEiq8nKjfwG0Cjc
	+gBuHNVkn5WrHvRynqjdUAM9z0rhhp+pTUX5kqjv/FlXpsN/fO1FBh5YVbd19VWFO0n
	5vei2/7EGm7FRv/XzCBTtbuPCbSTqvYSp32+vUMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655381759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yPvPwWAl5DP08cSulEBghYwm8Eqo4f97HPS9GNXHJJs=;
	b=azlexeNRhlRi9gpg5PeFi9xvEVI57xXDVaQfnTo6hYlBmBP03xElakMkDp3JyURs
	CNLbXpsp1sjrSfBxruI0T75tR1Pbekhcu9VWVy55SWKDOrs+D0yxoceNjtEnAMSub/Y
	VYzaVGTqOhVpK8I+ucNk+D3yYO4U/6TZJHGDRSmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816c711536-12c0a25a-bece-4ecd-90c2-7ddd25192394-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ed3c0605be19e0459039d0eccc7eb16bd5e86f58855857cbada8d0805bc7c57
Date: Thu, 16 Jun 2022 12:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655381759
