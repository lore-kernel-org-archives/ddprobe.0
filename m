Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3B57C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656037612;
	h=To:Subject:From:Message-Id:Date;
	bh=zb34VAg+0j+Sn/OQGTFm/rCdmu3yUwh568ymhiJVHpo=;
	b=dUP/Aiu+NswD//rGEI2s6056fBkCNnwz/9z1fF1H99U9jLqnKOH53mA7wjPJNbjt
	zYVZvLH3KUCHNG5rnEjWFcxJXtJUK+auosgjS8lg06C26wCZtfjIzouxTR2yPLatXXD
	zwvF6T+fGaLbaaL7r3xAW7vbDeSveKyRQvXR6hKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656037612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zb34VAg+0j+Sn/OQGTFm/rCdmu3yUwh568ymhiJVHpo=;
	b=ZK7Ix268ChG+U/QvLS/lEEdWXpSn1ugGwkcjAsR9Xk40A+sFA+CJV0eXNH9i4U9q
	g5/A8zPeDMwxHG4s79i9lpDoWTEbPMQpnGAHdspxwyuLwxNb7h301Ds9FS3UiaYNnb3
	8EG77T5JywnAl0oI3irmam+ON26/uD34UvMTlQ2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193889b0c-9eb53624-90af-4f8a-886c-5e473f520a26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 326fbed2e5adec6c566bd2fc4e2f49b1ccaf7501bf24e2335e9d0c84847546b7
Date: Fri, 24 Jun 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656037612
