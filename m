Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BA51841
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 02:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655952359;
	h=To:Subject:From:Message-Id:Date;
	bh=mieoe6I4ezySshMt4hXfl5EhlIsoiTQQrnqVIXosvsU=;
	b=T01ipsz3cbUI3qnrg/SvcJa7SWlXM7IPv/QWwclsymwHBX1nWAcz2E+cYuZT8anw
	SAvKOfhjTa4KTDHH4VjumSPSA3DyS9nrIs7ahH73jfvgO2AIHGGDphGVr2gERzncoQQ
	gKzlu1VLxE5fRj1a83jHw8KmH3gBgvp6rGyUyudg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655952359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mieoe6I4ezySshMt4hXfl5EhlIsoiTQQrnqVIXosvsU=;
	b=bEZrCrumgLj6k10Cn6JMHOxpMcy4R31APVKHTErfsRIkRHTE6l4vBU+tngsDDEWQ
	xdw5MRuVnWwQkKCWLoNcMq5i8tEWYTtfMSDz4udjtoG1b0P8cSfKN52fHcyoVB4mqTH
	4K85561EkMee2S+MWoF6NxtB520wGbJg47kRZQsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818e73bf47-af61004d-e756-4834-bc6b-da82f411f832-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f796a12daf20dddda68bd2be9feb3049f078bd32206777a30055bf80a473f1e
Date: Thu, 23 Jun 2022 02:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655952359
