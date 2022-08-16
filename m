Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5BF6AA9
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660684852;
	h=To:Subject:From:Message-Id:Date;
	bh=NpJs76mI4uxLJN7EgD29uDDEIlNwMXquMbkpA2Oa0vQ=;
	b=DdlLaeKTd1m2O8G3jhu5UEgwVIySJHCKPBBIkpb2fD/uR9pTR9MGUXAmaVITZnaH
	Q3xkrW0Hp6DNVknE+BIH1aN7ilBiaklAv6ibBDtKdCTHgVuG4CeYG2Mo56Bd7ZTfiYM
	2UL0Q2NKw1/+c9VliWyA4aQUb/g3FJtY50gsMCQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660684852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NpJs76mI4uxLJN7EgD29uDDEIlNwMXquMbkpA2Oa0vQ=;
	b=U2FJjOV4SQ5YXOLW8MzbWuXhKSvjJzggdnPet06/KhDpPBHu4K++OfrmvUSds99R
	TLG5j7ggltgJy+Lfszcv+QeNW1G/BMG2cIvaKfT+z99k2P70U5LX43K6z8r4dusRHSH
	lbPAycHAvDM9BfYgzQTtHr6H/kuwfkrJWUF+peJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a887dd86-9136086a-ddf3-4415-bf9e-c1b0241838f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4639bf61cb028d3514c81874a7484380792fdee32db8193a4fb08ece566add3d
Date: Tue, 16 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660684852
