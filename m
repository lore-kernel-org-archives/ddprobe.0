Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC097C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 02:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656037012;
	h=To:Subject:From:Message-Id:Date;
	bh=zRr2RDTQfGchd4jxBOXshPtIprpoH/WqIcj1Ub1zdac=;
	b=SNMarIVb/1Z3dwUYZAcKWS5LgQ4XoxMU9xrlgf+UuJCmXaJ+YSjru/45oTB93bCw
	0lJ05oypgQepPdGisNgiZvZ7kVVoqIPHZAaZopb/V/zmEXW8HxI5qbPzQ+pWtrjShJg
	wTEV2DPpko2Lld3DBjxySCla7Owrk/qdtQDhRYIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656037012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zRr2RDTQfGchd4jxBOXshPtIprpoH/WqIcj1Ub1zdac=;
	b=ZEuSl5EgQS+6PpsHJmtbueAG2AlIUqgDArHcW8eEiPvFfY7zoIIqAwVK5gGr27Dl
	hMun6GHvi4wech1uWbzgjkn2BiusPb74EpLIyt6W5oaHsBLmLbfCNj68TFaopq1PwrT
	4KVRKDuUPOAk3bOMS1mipqw/JZhHMePoh6OlgqmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181937f7333-9d645fa0-a7dc-47af-b3cc-b4f7ccb696e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 070dfa2470be8e695b92b95c448456dee7d8853a0c2f0e7aeb15eb45c2b36685
Date: Fri, 24 Jun 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656037012
