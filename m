Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09D37B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 20:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653857279;
	h=To:Subject:From:Message-Id:Date;
	bh=Dfa3G+ZOoRIP86w6w+V4kqptYNlWH/aUbLM4jaFHByQ=;
	b=BXc6iHsx3/pW0ftHDniYxbH/ZBP8RcWuQ3c4bfmULHB48r55iFodJvOH4ktb0cPQ
	yMAK1WyqnpVBfXXM2BWSRl2kCwUXsxuk3aVRwkfMJPkbYC4GV1CjwjpmXWB/dovBFSh
	PM/xACmFh1wg9eNRYdUVFYSXvxhHt9ecT1rKgwUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653857279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dfa3G+ZOoRIP86w6w+V4kqptYNlWH/aUbLM4jaFHByQ=;
	b=hrdLbrqgjpPe3tgEwBqDrij6iJjNNOv8eGmpIhLSKZhsayoRiMli5Zk1JslRb6X8
	+6g75tv5ZVFKwhukSm7CTO8RXWoSSOIxr/RM2hrm8n9aFnvAXuf+hmPtFowMEJWoKTB
	QXBXK/7SA2iVRPbly2xhL5bV7x/ogp3ljPMOT2kg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018111935cec-2cc0258e-0a77-42d2-ad04-8e2180e28e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87b683729000940ca5c2d1cf49929710c707a3468b849ce316cb0d1453c58ccb
Date: Sun, 29 May 2022 20:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653857279
