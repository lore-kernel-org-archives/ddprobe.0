Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEAE29A3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656185812;
	h=To:Subject:From:Message-Id:Date;
	bh=/4GOyLVP7wzFsxrR+yU4lMEaDGp2/t3FjNpxl2oKMuU=;
	b=AFBVgLPDFxrfYaKTvS+Db5QZYVrqufVJxibP0p0dhWDlPxm0K3tNAGxy6MPqvU04
	tOl/O3IuzUSc80SFgX69QCNo2am7Ap4HSBXOfSXb45rR4jyNK3xu2KepzHFkiRgvjU7
	2R+2BTpYjUmZTli11Ynwng2y3MY5iNohWXrcMbtM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656185812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/4GOyLVP7wzFsxrR+yU4lMEaDGp2/t3FjNpxl2oKMuU=;
	b=CQLZSuHwr2FUC1Rl+tHcESUKx00fGWnn+yiFQTB7x1N0WEcenw7/7r6NpfWjYGz7
	DqV7c+6ERRR+vET4CHNkkwaD8ziRDsTStgUDR2fA4tt0KvkULIB5iofkRALaB7R3EAT
	pp4Za6/W0goWHehws9zty8HCMKieC4M/t93KJvCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c5df568-f962ec38-be65-4343-a286-d350dd83281c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0bca944f0fc88c0ee5503e6fca8f8d0d87ea1e6779c28c4ab253540f9a86e6d
Date: Sat, 25 Jun 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656185812
