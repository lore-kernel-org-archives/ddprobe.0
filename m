Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E08EA8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 09:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654250339;
	h=To:Subject:From:Message-Id:Date;
	bh=uj05pKTGPlaX7AwIIPnYYN8y4twfWkBqOeHRSIY33yY=;
	b=IeqPCkdlEBCU5balu0DA+jGf9eCWY0eKDc6YlQb1tsFX+QxzpQFq6xEeb6xX34gq
	OWwLIZiwA2PVQbz1FcfaxGusCU2FgcU1xTpyDry5HASD87V1A8cNCI7HTK//np5MIxS
	+Uwj83uAAb74jVD3QrDXAG2v1WS9EFPDE4QtEI1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654250339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uj05pKTGPlaX7AwIIPnYYN8y4twfWkBqOeHRSIY33yY=;
	b=J/4QO7+DnsNS5EpG3YVGi1BJYinz9IxttitIAfsn2ElARKKkIglGRELTligvSsXw
	5/j7SFeImUESZa1HdqmvoFVJk50Ee8C62dmg+LfKDXBURUdULmbFa09HCorjLSmLGFY
	/hmlEudbAwRLdUTAuF5mZNCxGlxgp69OVhS5jAGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812900fbb0-d8769c87-a3a7-498a-b0aa-7193e18a5ad3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10f4442f069d378a9b9a478de04b97860807e08d125867d81b2b5dacc5a610cc
Date: Fri, 3 Jun 2022 09:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654250339
