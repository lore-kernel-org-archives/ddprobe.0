Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1686B1874
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 09:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655975579;
	h=To:Subject:From:Message-Id:Date;
	bh=SH7riEZXgVmQ2pNSuZnz0HQEArateqGtJoqSkAp+ZXU=;
	b=Q0RJGgjyKVahJ1fvjUVIl24yFWlxm0mGh40W+BStOz7/8YTFsoCSwSBLIKvwbmC7
	pW53jK5L2MwOw1yZM1W58+pmiyFjCV3QKNMxUw/VDRxjPsNbyvM/mfC5AcccX5sPMhD
	ecPOdsRuT471MRvoHsjQfXY7PNDPP6dY2UZrb4mk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655975579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SH7riEZXgVmQ2pNSuZnz0HQEArateqGtJoqSkAp+ZXU=;
	b=AJ+8t7j6O6SrsvGWEDFj5mvangiL08lnhLk70icIW7Or+s5JKEA/nufufxZGs2XT
	ERP134zlv+G0tK/NG5/sWLLHS09mwghFB9XmDHG36GKZI8FffNcu+N6UPjmGexQd2Qi
	Vff+YlI700ssnkU7QI1IZrU+ESma3EMSeE+8g/Zw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818fd60e61-967113d8-7154-4f4a-a733-19b6cbbb4cca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3e3ad8c10be0625ca2a05ed81b3064a0ff099321a798003e0420ba786a39f5f
Date: Thu, 23 Jun 2022 09:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655975579
