Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E818015A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656122212;
	h=To:Subject:From:Message-Id:Date;
	bh=QRnG2oPfrkIbVoxsP2ve/I4u2sUkMIAk7KKVhOh5OkQ=;
	b=Ptl6mzs75WJcHydWkzawByIQGDlGEwcWI41SYy9lO7n+FP9B8XuTJDweTXDkhg6f
	TKKd3iRZdq07835S52mzq/RKdo50AptgnWnXPO/eJvBwxb1FUZI580hV7XCQxDqASdl
	IPL2GiZ+xER+BiOfpEqnEjvA4oS23Q+f+mGv5jAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656122212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QRnG2oPfrkIbVoxsP2ve/I4u2sUkMIAk7KKVhOh5OkQ=;
	b=ev9z+ktL2Z9TikbvDtIUefWYgErypmQkFv2Mpp0Tw6IlqHwgafmwWM7RFEQBo+2U
	e/bT8cinPPAmn3lozUd1nZpv5cQRlwMrRbIdFQA8PWpUDXwuAQCW4C07/tVrjB7lT+T
	loeSokiKQVgR4ap9Uf2wxIyrLm9qnlnE1QP1l4gA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018198937ff6-2d03e5c0-48f5-466c-a5a1-ffc42a219388-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 408ba9b2d5201bd3e5e8e1c08b32889ff2ea12c56d4aafaf3fb5193ac938c4f2
Date: Sat, 25 Jun 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656122212
