Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F544C65
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 23:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654644779;
	h=To:Subject:From:Message-Id:Date;
	bh=dtiEWzMB2TsLgnN6QTn0cH7qjWrFqHuH+mvXmyTIxGo=;
	b=EGyoRUi+h894oHVxR9ITLmVWXFXPpTB3/Z1Ryt5AjrRaWYMiHIXcjZz9m/290oil
	k64YU+SuGOK32zioHG+Wddq+rTccBUmY9aHXtVRQAYn1YOG1viHdAsgkrcACs9KbTuH
	OddHV7xwEZqzgNOfAFwZQ730zOIwhIRs/BWWHiK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654644779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtiEWzMB2TsLgnN6QTn0cH7qjWrFqHuH+mvXmyTIxGo=;
	b=fEtAzqJtPIGBMaHAblVt0tN9TpVbCQ1rCXH3KqydI/iR+2lw/H2mDF61Yj9DiSj9
	XBzkzlp6k2c3WXLgUrOujnn8QwJFMdlwrYvW5bYgvCdfX1l26tXIWNvV1Xn4sfGZFAI
	vAHW8Wqow3iCKw+aTK5fqa6+2ljdP7T9wzK5T9KQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814083a918-1e500589-cad2-4cd8-8334-87d89b1c2be3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9369316deb5f3553c35f85a6df356db96c524fa3297a134dea9d4e695967e3af
Date: Tue, 7 Jun 2022 23:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654644779
