Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C607C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 22:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654901639;
	h=To:Subject:From:Message-Id:Date;
	bh=fBihpTciD875FqcArI08JSJTe0u2+10VIfKplI2s9ws=;
	b=GO0gJD7ScjcuWj1YPc+M39DnCbDKtu3bGq3g//Uu8BO9vHXlHTaTkKLgcNteh7yN
	Gk8c82WwU3vpCzMeRnHLK+UFyt8HX2GQ5RZ00h0+m1rE8dS6tISaq874M0Svzg1xWS7
	98sREMO45IFtkt2IM63ptSo9soWaBKUxZYCeZLw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654901639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fBihpTciD875FqcArI08JSJTe0u2+10VIfKplI2s9ws=;
	b=ML5suxLW0NcqSpha/v956a6wPWtXVry3Pwv7GMHHl8kKtcONhMJRsc69mK4h7DcW
	pbLmcoYyL5Ckn2e7Cz9sIsP+GlV9UOgOpY5Z0j5QJRtHK4dhjgtgdXr1P8rwns5yxum
	PTev+h9MEcsD5fuKpA+CF73KwjXzR+F2MiP9eVYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814fd30886-2f8e9b8c-5230-4a82-a8d5-234b69f571a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d0f6a9a850ee6a7dffd70e9ed9bc79a2190c65ada0cf762bcfc6b9afc5cf300
Date: Fri, 10 Jun 2022 22:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654901639
