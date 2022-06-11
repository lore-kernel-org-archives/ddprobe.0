Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B597C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 04:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654922339;
	h=To:Subject:From:Message-Id:Date;
	bh=o+2PvwJ9OMkiw7xbDxCRBSW/e7eD12Tly45zd974aj8=;
	b=bC1lG35du0lxDoVVpINYyR9Bv8KBB1HAlcA9LYp25OJZ1VRxjhM2Sc4sknd7Vc6/
	r9vYbf0IaOwUrjyn4OiQT6geN/y7nMaivGSxCAoXDZ5WyFZkAsUDO6HHjheeWMRJA1I
	rMfMxk8HbtMuNY5mcbACb09LUtM9ZUym3egCy6CI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654922339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o+2PvwJ9OMkiw7xbDxCRBSW/e7eD12Tly45zd974aj8=;
	b=PV7bzhZ9QWMDpAtNaFdPh45ywmNFE5HPF+eotTOvJzC2t9xBdM2CbWmuZlEX3OK5
	QNvAqWWs6rSepXhTuFCZXh3Bi927DJj+9Ag7E/xMnMABKW8XLUiK1/tIiovkMaZ5u6j
	Pvew1fN7ZXbaP4ZlGA76R2V4+BWITKOfVRhVCTLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181510ee3f1-9c8375fc-89a9-4347-8e9d-87b226a16bab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63c91eefeb433400205d2e5aaadfc4c0adb1a3374e11a579cefe12e7296dbe7d
Date: Sat, 11 Jun 2022 04:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654922339
