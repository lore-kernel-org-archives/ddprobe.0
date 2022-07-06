Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FC02F21
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657143412;
	h=To:Subject:From:Message-Id:Date;
	bh=Wd+M1X6oPrBrOhF+/o/n5fQMSZxMCZqKvsCzyhCNEog=;
	b=F04H43fiEwyI5BfDeRF/LTxm8v1c4OZ6OfjNAGQTZPTcf4hasYJxx7KIGLR2k5Ah
	ybDwp0wkwqFZYV8RciIwjf1IpU3GwVZMpUiKBBVZMvG5aQL4QtJeoyMsjLTIdtaYpCY
	PrbZaPSNwXk7h5ANgp50iHu35yYtmPhGxTY2AjMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657143412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wd+M1X6oPrBrOhF+/o/n5fQMSZxMCZqKvsCzyhCNEog=;
	b=GEm/tW667JgwvTW1qJcZ6r7g4BOGda3lFq4W5f5/0oCR4bWjd8nTFELrOH0Yvjne
	+ng99A1BHa0Q217BqRa8+th/JNs6NL4w8cS5EVhc27gYzyd8K+E2bt7l9NgDmnV4k2n
	7tHtVYaqymPg5a03YL9IFnYt6BDBqex/QsV/OO4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d571c6a1-68104e8e-34dc-4022-8088-632bbcc25ec2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a16de3798e1ee0b2733159cdd774c7a6d720b98fb9790067ca4342091e912a1
Date: Wed, 6 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657143412
