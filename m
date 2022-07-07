Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E52624
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657196212;
	h=To:Subject:From:Message-Id:Date;
	bh=nDpOBGbA6mtmisiBPr73M8w4chWYH9S3vGUK6H9pwUs=;
	b=aAiLJudymjxZJrK7HY/5/yxk/ze4nbS/1nhB5e3wVXw7JabmCzRNZlLg2OuL0TRx
	VwAAdbGhYTaaXDr2pRpy+vgUlWlFLZtZzsCReX/12+vOQFVkCS//edAAGQz6o+NBDoe
	SpXNzCFcwg7vxSdu7LCojZG5tLr3N6gKATQ0HIOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657196212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nDpOBGbA6mtmisiBPr73M8w4chWYH9S3vGUK6H9pwUs=;
	b=UV12NQJlAfihvcX0+JorOjl9Bsnyx9fHjJaszpN1Mtdep7gH6z/SvsfZWXXopT+o
	CHbXfuSeED6vYEhjNtfaqL5c+zuC3f1EvdEdT15AZxkuRbedZfI/Axo3a9pu9jwYnp0
	0DWGT+Grqfg4OoSx78H+RbLYiqJ0JMSrYPeZJuL4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d8977023-e678b16a-68fe-462d-8427-494b2cae53c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28c12dd62cf49bac36afcfaff93d21bc616a3e7f9329a2b098ab036a5693f855
Date: Thu, 7 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657196212
