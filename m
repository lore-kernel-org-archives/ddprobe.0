Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7AA3201
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 15:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655479739;
	h=To:Subject:From:Message-Id:Date;
	bh=YNjvIBZd0F/pBroNV1Foy9HisRR+6zsN2m/okCa+2wk=;
	b=gKpyyeEJKDzDmR9+XzDJSMh5lj0fISTURU4aj0l/tHowjewTpA16lHgEkT2IwnZA
	lD2NrYMFpFkqcnvFjc6Wp8rBWVlcGAvFvR6XpgRZ39F/8zp1BOZGbgOjXpcIzasnoQg
	Q0XtU+GsLNme3NWa+QFUSF9mGUZFkbUgpIsEoi/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655479739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YNjvIBZd0F/pBroNV1Foy9HisRR+6zsN2m/okCa+2wk=;
	b=gyQQCmNpGUKQJLxHYAO0xrQ7+y4ug6kRqt6lKdy/GZ04m0QYdYMI/py1vHdpzyF3
	zgdGoQqLs+G4HYJ7da8ETGNbqMlnjwcug2MoX2j4ZZriDXBoI/58s+w/Q//PglkBXyF
	d26XnDJKky9PsM5GnITwIOsNiqKjfuVfjDjLp+WY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817248237e-ac865a47-83c8-4d06-9e77-5bb361d14587-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14ecb93b46dae344ff8b21c7d27bb7f7d84aee0fc4d8baa6207efbc21d3c45fc
Date: Fri, 17 Jun 2022 15:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655479739
