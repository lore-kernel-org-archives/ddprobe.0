Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A03F602F
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658338012;
	h=To:Subject:From:Message-Id:Date;
	bh=apYO/0/xTp5ejvn0fJAchzIrKHDUH8/H7bm0eQVnnZo=;
	b=A+k5v7P6AfyWpIWFS493bjCeseFIjgpAKU2w4NiE64qHZMdFefuRTTEoPOnLd+Zw
	FOXfr75BfzWm9fSF6jXt94hRuCl7aU7lrj8+DpdfL8Wq3vs1+8c0tJtQVLgrqlcH4is
	w5SLT1vdAZ/JbCLFo0k/hDFtaaso2Vgz7R5O6cAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658338012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=apYO/0/xTp5ejvn0fJAchzIrKHDUH8/H7bm0eQVnnZo=;
	b=ekxq4IC/WOWG1yvt21EnuoOcFUREYYWZ3pfuY72iLT636y5mfpP87GXqQM0blTJv
	5KHSjcHcQYxPLYyxJa0GWihVmLaiReis1rHPQOE8m/1DzER2AHBBQdFWLs45bh0nMG/
	ZCXHK2CDfUhZmpUXgLRvjwP4ollO15FwoG7khW/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821ca5ec7c-29dee4fe-26be-4dec-9300-a0eeeb503b8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d9dd29b585cfeecfe773030d15ec45f0403ef7ac88ab871d69a1e2ddb08579
Date: Wed, 20 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658338012
