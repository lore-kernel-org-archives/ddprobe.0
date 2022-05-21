Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258CC19F
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 16:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653152159;
	h=To:Subject:From:Message-Id:Date;
	bh=s+OPbZ2/7fYsumY/o71dtKDPnzk2W0zJTb+dYBEmbL0=;
	b=cFPuz5OC4bPqN1mVzVY6/+vk5CEkocYA/Uubb2lqD2AN0X/MwgwZDVbuYl7Dbrr5
	p850k69fZG0X+w3KXqfbVXBlCwhdsyACJaSTwxefSnI45o+XriDDTxRpgzSnsEATEi6
	0REyJzNJEgnCyhvedyDs9kpJ09BJWwTiZ/ltHpmo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653152159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s+OPbZ2/7fYsumY/o71dtKDPnzk2W0zJTb+dYBEmbL0=;
	b=G2TdyShdAaqX1GKDPUHBlUviQxphnWJYKDq6dWG0T2EhPmqkWWeJTC8lnbtQ9suB
	APTVwzT4epndcSPIEHlQdeYI4Ijyaf/TitJ9X07YONgTP0C6VSwdzZ0CrxJ2xYHXq7R
	1253TGDSl7LiLWGnijMapOh5WMSza2x+js2o+Rrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e78c1620-f0377bda-3093-4f8c-9763-2a667bdcc058-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f12eaa21dc75a5d589ef6279d21cfbbc02156089a362131056030edc3150ef58
Date: Sat, 21 May 2022 16:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653152159
