Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1187E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661353253;
	h=To:Subject:From:Message-Id:Date;
	bh=GlEdSw4vW4807rOCopJcHZupg8kky9x3ApkW82Sg2SQ=;
	b=J7tYNzmZJQWzBuHbkKxvl7FN8PTa6uCnrSnGpmBy+BfWzFxXKr5Oeq1ehm1jXVFA
	IJ/wHgRvtLWli53eEOngw3EH78BBNi7j538aSm/n4yT/tC2q4yxi3FlV4nGa8eqa9F+
	mLIRHafw5OBYu2hhsgCeOb+U7eaXYTdY72Si70Qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661353253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GlEdSw4vW4807rOCopJcHZupg8kky9x3ApkW82Sg2SQ=;
	b=B6qVtDIMBt1BiOoRFrT+t5XJgfylpHEySRt2rhi+MdQsO+Si+01rsZM1VpTDogKP
	cK53k93eDgydrFGrFp2d3CZNM4KmXUXn5TKfXPjLoF8b5KVdBy/9AZS9+LQdv505Xjy
	qy5n9Tx9jYUEcZuNPah9xaxs8jtMmrEBU2NygBIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d05ed6f4-8f24fe3e-ed8b-476e-96dc-984ecdab2627-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3f808c0206e489953596aca432494351dccf3480a526d58f824177093a58950
Date: Wed, 24 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661353252
