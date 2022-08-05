Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C027C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659667253;
	h=To:Subject:From:Message-Id:Date;
	bh=zo8Cjk/aHQ/5Cvdzf7riRLgagYrfFIE4XEsXDueeYZ8=;
	b=NMC7PuH1dabZX5ncm69Q1RQy0vPyOi8VvXO5XvzxpTtGAERaZSq2BUoDDy64U0/X
	3A+BGNM8Aje3K46PSlXG0tKbNHAherPWTUT9jZQ/DkJaEvgBrf6Ov1KHJgFf6D0c3SO
	/RNfSh5mkBYp+p97nE4D2FyxAfkHNp8qZtJxD4A8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659667253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zo8Cjk/aHQ/5Cvdzf7riRLgagYrfFIE4XEsXDueeYZ8=;
	b=Vd7nccoGcMjBVu2HE0GtfQF+agr2y2pZ9rgOIJ338fYwAJ6nbTTEearpKQWDejbH
	jl3U0sgQNqmmA2KDAIEAkRX1twSmfj/JhMRZJNBVerenAkAKSMWOpixRlt20bWOk286
	yUm2w0Cd9CkpsUmua+3fCHYIGbj9d7Qtf8ycu1W4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826be08575-98ba272d-8526-467e-b9f3-4076901bd344-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 502c4f69fd1c6ebcd30eccab4b734afb3785053ba2125186d35d0c38cc8023e4
Date: Fri, 5 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659667252
