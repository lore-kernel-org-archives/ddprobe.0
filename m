Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7951FD5
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657588012;
	h=To:Subject:From:Message-Id:Date;
	bh=4utqGVjHbZG9KsUZUDvmJ6Nt+vV0wb1u0NyeBZTnTEg=;
	b=JLCnlio3masatyGSHcEYyBiy96jACiKSYiikAfV9An4uvqKC1Aoehpnzd0ddwLm9
	dwyb5E6fhEidfUZHJgFyX22p8ds5xyrjYEkDpP0UnKAMTCoTHZ9lv/bTDgtLKVK3Zo7
	ZjKuAsiLsnqG/gts4CfOU5qRFS3eZchdZ0u4/doI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657588012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4utqGVjHbZG9KsUZUDvmJ6Nt+vV0wb1u0NyeBZTnTEg=;
	b=MjVYxyZ+ixGDTw+Umkiq6N5Vux2SD/8K5mcdvKytXNECbY9Vk58AuNZejt+paUi9
	6l3OG+WKWbK0DI10DQfLeJlvzfunHvZhLM8zbGukrrk+gxasPtn3/Sbvwa3VPUxJmhd
	zOTUSz1xmA9ufv3Rb1rA+Xjhk8bfyLAbL8zbfvZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eff1d54e-172eeffa-959c-4a0f-86f0-6dc4a8b17a6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a1da809b6d118657b9c0ef876c96591bb295266b49a08a8300b8fec0836bbcf
Date: Tue, 12 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657588012
