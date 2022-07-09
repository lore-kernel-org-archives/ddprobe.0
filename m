Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139DD7B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657359412;
	h=To:Subject:From:Message-Id:Date;
	bh=RGXuVVjj1PElOhbz6y03+a/B/EmuzX7moc3HDWEHHN4=;
	b=CqwxeaWY0aFcpSjmleVlhiw4SSz5Nj1LNRVybG2pqf+iBgAcc7cUCqW4nBQ/GdUv
	6iRhLDOmxcQWdBn3eANL3LtqKuy/vBLa+f+ZuhEugf7c4bMjpcZbbVAwunD7r+ACy7x
	UCq0sqM1cKbQVVes1az+E44KC+8AoacVR2FjNx7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657359412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RGXuVVjj1PElOhbz6y03+a/B/EmuzX7moc3HDWEHHN4=;
	b=UtAxLcCH8Ph0coNMer9CuX5+fhjjsUjqS6ZnZsFBLlpAOveZXOzdbi/owAiIkROL
	q+evrvGWjipx+BTOFl11SXHvhNwLpRbGbSRDBHpaDlGjoxiNa2ZHWPZqpfYhaRIKVhd
	A08UI9/kpk3gDOFuidV1HpBIuy8TxnOBs81vFp5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e251ac3a-cac394ee-59e2-43fb-a137-80ce30c0b1b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cc826fc3ee895b7bf0b1610e8b290812b0c6c11bb27a80ce7de7b8056722957
Date: Sat, 9 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657359412
