Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A831876
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 10:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655981399;
	h=To:Subject:From:Message-Id:Date;
	bh=0SNmADRJc+B9axFZ4c9x4BDrFvF3Mn9KKrGAOm6LaSs=;
	b=DlsCY8PFFLxKczHFGmoLTvZzN1bq5VpWAof9DzOjtiblQLBQR0uiwhugSVH9sc+w
	dxSSNEhUIk92TtJojvgt9yLvwE6l5FIAOo4/UiX7C2jUxMofzjvz0KVJjFUeQW6zgoP
	QjRTDZaEml8jOhMudpTfQAyEJTlQCv0fT2PGOIvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655981399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0SNmADRJc+B9axFZ4c9x4BDrFvF3Mn9KKrGAOm6LaSs=;
	b=A9ZYINkp2ZoPWiMWkciDfl8qpwy/Aq3KMJeQRDXi9qwR2AidT1lGL7Wm66QykAMm
	vpLSMXcP3aaiMRA+5VP+J167Ajv7aXsawvEOYL3iTqshA4tsj5bwq/gbYhvBIf/UNmY
	AmkR09J1O+/ULzAJH9dX5NEGF3y1ahotxTHnehy8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181902edcb1-4466ea55-ce99-457d-ae7c-a466a5556613-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1809837d05d24dc7db385e6b8912de8a336c327286fab285d7f97088d2a0b40f
Date: Thu, 23 Jun 2022 10:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655981399
