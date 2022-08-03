Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26A37F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659502853;
	h=To:Subject:From:Message-Id:Date;
	bh=qxp8szt/p1ECCykddWF5jyf+GcIBha3LTVCxtu+4ybE=;
	b=QzR0brnScuUMm4RiQ/cJ7CWrtnGD6cnb51t5pdxH4HBfLQ3PbMbf83i0vA/GsAoB
	tyjvfeXmuLie/Snpd0LC3VaDl0nhpHcQpCfKW6mYZqDpYN5JpJh6LCODBBCUEnK332E
	j43OOUL2oP2gf9TicoKOh6lPjJlajfIveyfWT5LE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659502853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qxp8szt/p1ECCykddWF5jyf+GcIBha3LTVCxtu+4ybE=;
	b=iDqqOGjlX2zvdFMmJBJUiZym+M+1OWd0zD0HIfWq/79wu+/7RU0Rvf5k19+z2AFZ
	JCZCCMMBLEKZvVdMGvy4cVGqvF6LVjLemHx7LxhMCfbEdZAOirpQdGN2YwPfaWzeXXf
	br778CbaIRzuTy/g998V83sjuk4oM6SUqMZASJ40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826213f9df-93427c8d-bd35-4c2b-9f91-291b2a800c25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e36b7112cd59cf7f72f204e623c5df325f57436db5e8d5a1e819cd933e756dce
Date: Wed, 3 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659502852
