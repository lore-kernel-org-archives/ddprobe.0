Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090527E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658558812;
	h=To:Subject:From:Message-Id:Date;
	bh=69lRUS7Y/6NO/qIludA+Ap7AtDA7sOOFq2hjjf9KuWI=;
	b=DhJ2ROUHfaJAYfVZUkXUHu+MIiMYLdYBy1fAIQvHQF6Ks7nKFs20GaKkim8oFHdh
	VpBYEMosoq+82CtJnGFv8t0etO4JxVckXJOTXpAzzx0ByMSU/MsJJjI50WZfwOr2CZ1
	VzmM0pRu/MAaHeve0RnvxzxoH3v6OL/ieGMtvDQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658558812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=69lRUS7Y/6NO/qIludA+Ap7AtDA7sOOFq2hjjf9KuWI=;
	b=PR9uiv74fgnSWGtjTUqo0wF2p27z0c01OnK35BBEt6W4o5+6zmVIpxsuWFL4/b1a
	SE9Cv5EJ45ZLMXpc5GIgL1yV6r01WrpEKnh7TaFevpv9b+QtFgcGwAh7k6G5Lh6+02E
	X2pUWsHotycYQ8uVR+FziV0jLcWAtchzsrbzhst0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229cf10ed-8f896ac2-91a3-47f8-bb9b-a624414fece1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a75704be5bc256dff5a8c6495f6e502eca3a791cd865536aaca8a28f22a4b834
Date: Sat, 23 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658558812
