Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BE615AC
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659259252;
	h=To:Subject:From:Message-Id:Date;
	bh=u6oQ7KJrHgjdgG9PDDzmmAQJ3TX7VlXSaOwsdvGoNMc=;
	b=YxJttFFJqZXolit3tsF1h0qzOxNcPYADxJHRXfw97Ylwvxi3N809DvCY5nhsMDk3
	TvcaolGSrU4eW4cYdx2QPtbxJgBi3vhv8UFIlt3yCQ4aTxCHA+Anv8A/MvdlES1pIXO
	MU929FcVPTpCxeZg6ZBwyTXXDvOgf8SbdfF8/a1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659259252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u6oQ7KJrHgjdgG9PDDzmmAQJ3TX7VlXSaOwsdvGoNMc=;
	b=WRcorqcmGRbd2KUSrtGmFocx5cAokKLA7nqHcYnj1OCRK+QRrDa5UhjaJEqCj+Mu
	iggko9A8ZrDSOPa8caAFfE1IjPS8ov1Ea30zvmDPGL0wuEKbV78g9gHG47bf39AHw4Q
	YvMmCvo/nI2w8ENgGIKGURRqejZXOttYqERGYCoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182538eef2f-2b688963-74af-4fab-a029-5e5f49a5124a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ec60bfa8fc5a320fa3600364731ad2c5b98cb0a2ed38c5e141979eb52cd9ce4
Date: Sun, 31 Jul 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659259252
