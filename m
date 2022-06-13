Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B76110D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 14:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655130779;
	h=To:Subject:From:Message-Id:Date;
	bh=kXyCwjPujRBdKsTZu9lirZX5lvpeG91IOz1CfhRSdco=;
	b=Yv3ttySMd4E0BTja+DJ6vhifEjh9h4feGt2wFKs0VaqHU/Mb4Ta6p2Gr2q7CQXO7
	4vOL/35A8hHu2ldjRut9340zhJva0wFlcH+wvvrNZ9r9rKvWDebFdo1+F96s9jTNpfR
	tScmj/j95fU22mw1/6MhtZ0exXM4c94ypBLnpALU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655130779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kXyCwjPujRBdKsTZu9lirZX5lvpeG91IOz1CfhRSdco=;
	b=SNavrTplGY53xrscOJ44zFEQy4lX5SyB3wowcbzWiwIvIIncYgD5BcC7lOsIs3Nk
	97gzmoZtSOZOS0EmieO40Ctm5mJXxhGGwlVDU/DUw1cbwNx3HSegdKz02fDWlag2Zas
	ZHhFXAs4ikVTlKma7G1Fpl0/gJqJ6429riPa5DaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d7b6e6d-09daa1d4-0179-4da9-bb35-b46aba1f3384-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 427ba0a46568cc8571ac1123e2c4168137ee83089b098f349a7eb595f2487097
Date: Mon, 13 Jun 2022 14:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655130779
