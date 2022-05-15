Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B3A3D63
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 19:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652644019;
	h=To:Subject:From:Message-Id:Date;
	bh=ZDYjhF1UDwA2a9f2vrk83n1L59gypLozOl2FxwKdySA=;
	b=Vpy6DNGjgJ8ssMUtNEa3kenPB4tSQftTl19ozk3ZEffg389gshwK3yNV11Phf7xa
	ct5H56b7ePanGu6GFr4XtrLCpbTNZafwtjw81nq9FnqYdTweCKALqatZWSM3MYpdBOJ
	sqMMnORuauMiowPMdvfEHp1vyF8n2nvtgPM28fSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652644019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZDYjhF1UDwA2a9f2vrk83n1L59gypLozOl2FxwKdySA=;
	b=HRd6hWDi/kE94nDz06NzoXUGynutBVEJ/XDoU5XUZMQBipHKkFk3s5jlvbvwAWPd
	n9V2nSp+Os4rODJTaTLTyq7CfqgKbRdMEKyZzzwCIRBL6rXPnESoTg+X9+c0WG3RcFI
	ho+AdrkWlXSrInELQcRF2N3cjE0xF0W7ZEmS2puQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c9427c3b-a6c4c413-8150-4961-9cb2-2c78aaa4fc9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e891e1f793ce18878d752ef815cae56294b976428eb4cbbc6de5499375a65df
Date: Sun, 15 May 2022 19:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652644019
