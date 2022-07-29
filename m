Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107932F2D
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659129052;
	h=To:Subject:From:Message-Id:Date;
	bh=zT5aQiSpbq3CUFE9mBrcKSPXZ7aqcKhlDe19skF5hus=;
	b=N3cHIgm0C+gyx+svMEHc7MzfEZSh/nIFN9CTGiCkXkiEm3gR7ex96PmUTfTjqKkW
	3no82+BhcjHR/8cqD8EmP3XuN4jXLmo60gEtj1jyFQmuKyTqF9HBMRBqyr51AKC1KIi
	U5Bgk4YDf1lWd3fcnbzfk5CtV6AYgwab6YmA6gJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659129052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zT5aQiSpbq3CUFE9mBrcKSPXZ7aqcKhlDe19skF5hus=;
	b=CkZADTLikGCE/7M8q0ecfWYpg823YEZz1BfG8xD/kTUud/g7hBcKG0giIY0sxPAN
	Xp9zyfZ3wcDBmO0ymb8xVIAe33MbH2gIDAlxMzAEiGi/UXu3T+zHPLdvrzkeSUBwky4
	vyPDCDsJxFSOJXspihAgqkAUhS+Y8urKlxlTfa0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824bcc3d8e-8f8cf14e-b13a-4b50-ab67-1f90a9aa20d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b532d9b88cd8678f1702f59aab57866bce2f9c8acfc30037e889191cbadca0dd
Date: Fri, 29 Jul 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659129052
