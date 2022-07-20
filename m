Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289957B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658312212;
	h=To:Subject:From:Message-Id:Date;
	bh=WEaqnbBUZcGLcxexX3MGGEeTH92LFe7LnSTdwRErOFA=;
	b=IqZxNpgx7EyjYUB0tv21lh/VbkpgY3aDK5HaoHp/MAl/Jn5EBrzkx9gCMmjbxqyO
	bH0kHdiNYb3EZAcmc+CGZsemVmD5EHEpJWFFB4FLG7Aa9XwXnHV+jBanCdt9D3okIi6
	lJ1V/yakvsvNZRiIk273+BhjirLq7izq0w/SQlpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658312212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WEaqnbBUZcGLcxexX3MGGEeTH92LFe7LnSTdwRErOFA=;
	b=RryN2Wgg4vU0ypfHneNYTSyjSocZwNWNhk8M3RdgXEXkDj7O1jAJJS3/lNcXY2ut
	wZil7V+fpQVpwztOf8i9bXKXk0+T4YyQL66fl/a5dmU2XgzfV1oUKLfYWmtn1yTXljk
	wxRgcJSRw/ic1/WdKsaAA3ZcGFLQBE1IGeKv9x30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b1c3ffa-ba94ac70-c380-4614-abca-0181723eac49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4c0c8a1d58bf607f1d7085b54ac181ca9360228cf1d022aade318bfd1dacc40
Date: Wed, 20 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658312212
