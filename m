Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E927C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657097812;
	h=To:Subject:From:Message-Id:Date;
	bh=Nb3w2vVSBpD7ynB1XHl2GnYU6k1LvyDOF91op4ZbG+U=;
	b=XhTG4wGOAFQNUVlPta6ckpfqE64g3jFY+1EVVt2E6ky86gqLyn+9NRxpNXh0cnkk
	n7+tQ3+8WZVXb1Ct7YWe5tBrkQoYG45GVI5T4aAOp75du57HxyO3mTmEJwqGh/uj4mj
	+LVhbxUNaudQ/+gCnRQvAjIT9Qzno2t4bjyuQCuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657097812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nb3w2vVSBpD7ynB1XHl2GnYU6k1LvyDOF91op4ZbG+U=;
	b=ViIV0MGBPsoUrDIkV7yfIRVPB077a/IKgdEAaOu5HmPR8DzBCh1Uw3VjIFUlezxH
	7iC01ntRHY1qsMD86e/nfEDe9kc0Vw1YjzCrQN3OrYWItvguQIhtmwi0UcishtDc6YZ
	PGKYYpA74c+sn7gT6HtAuYx3ZunXH6xt2ncqvHyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2b9f93a-824d076e-125b-47e1-866c-74d7c4a6d185-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d82a505aacd572a791cbb5e65972cb352478d6b2a8858affb6fab06ecc9014
Date: Wed, 6 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657097812
