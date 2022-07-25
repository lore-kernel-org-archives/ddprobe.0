Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084E838F
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658727412;
	h=To:Subject:From:Message-Id:Date;
	bh=+JUeNOU6sE86bN5M30YaJNuRuJugSQVASBIvC4HD9z8=;
	b=K/dydKYbF2quJBg9Eb1mXAZdSre0xAniYMBLvKnmtudO9nR+18rBZddUeFGa/NVc
	6A/hpU2VlTQehnfzl5w7ysj1vjvXxXklTJwPOwmkaqx0S6OJDFZkJrQlJMBG020AsWh
	fbumHc2Jj5MgpfODrLDAY2wLxaImcpdbNkc+Xwzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658727412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+JUeNOU6sE86bN5M30YaJNuRuJugSQVASBIvC4HD9z8=;
	b=YDSjnH5tdnyS4fZqSWmCyXx26+MFoJkdnaHSePEwWAPvam61egAplUxWXMoN29pA
	DG4bBzpUcTtd+RovUuCID7mnC8Xaa+2r8FFpdeWlCCM6j8oOyO2ZS6TUDcINONiSW+8
	mXYyrTSD4iK+CVybFqZJL6gydVduHI+IP18xIbxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018233dbb214-bdfbae8f-fbdb-42b3-8ef4-2e6c9246a6ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d981f4db453aa2b887c7c31ac774415441de0452ea6c0dd0fd36ac8652d9bd2c
Date: Mon, 25 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658727412
