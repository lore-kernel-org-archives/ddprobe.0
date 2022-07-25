Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E563462D
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658744212;
	h=To:Subject:From:Message-Id:Date;
	bh=pJRB4SJjArw5G7HuyR8uMaQB8Mg01msSyWPXv4PgaE4=;
	b=XEMhUfP2iFeHArrsbDUbO0x0A9rwckPt3bfjeDMW4wbXm/kDFoFTHRR6bANObQKt
	YsXe2fb4jPJUbJSHbjXswgsiHz4UML6CwkNlDdfjvkMr4NatE82kFx8BSJPsCbG6bMb
	KUEcAiBQN3wp6NsZ30uZQ5Ag72L7IeBQZ+cpBXK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658744212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pJRB4SJjArw5G7HuyR8uMaQB8Mg01msSyWPXv4PgaE4=;
	b=O3TVoCE6V053m3IKfLriQVmiFDui0+Qe0poCjXUBe8LNNT+HYg2DNUcmooXeHD89
	UVpB+T5ckAftSo7cYaagiXtJKesr3i14/C9E7bbyYUpK0fCiKkguvKVCIdYviV9Wnpa
	u6akmGE1bnB+2qeHtgxx3Au/ZfKP7SoZdm1bY7cI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018234dc0b39-49d97371-16b9-4656-ab6e-be90236ce7d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e98770d0d6b35e43ee43b3ca40dc5521b5f960578aeaebeba4d678e6f5d986be
Date: Mon, 25 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658744212
