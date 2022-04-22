Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AF523A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 09:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650619498;
	h=To:Subject:From:Message-Id:Date;
	bh=ePi0B7pVUIQki2IAZZcDJleLjq8h2PJF1+kQ8BL3SRk=;
	b=f0XSCSGgMMoLb8Pcthlu1sWCwUmfcYMGlz/kRcn94ORTxFJDuRFWw6kSQY+rUi/v
	3sT/rOXsGUQoB6oF4wxwOdBRRRZq6iweZ8NhgS/W8f6MIF4nzdFQsmTpdSucvSyIVNw
	hcC/1cSkMdicw93iMAqnAoEuVuEtLRTh/17BszDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650619498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ePi0B7pVUIQki2IAZZcDJleLjq8h2PJF1+kQ8BL3SRk=;
	b=cpmLzN7PvDKEjrXtQm5s5BtLoDc7RbcD1wzs0CaGCXFjH2IYnLdLiPD4AKb5bOjJ
	9XqRhah7ljZK+wK8htLrk1SdLwBBG0gaWDG0m1RKPAmRiMuY+vY87oaFsmGEDPVn+li
	KX0qZAkNHeVAzoaBSwREsXn+2xM6tM49HSMFevh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805096bf19-6b0b244a-a431-4cbc-a444-a5d23e38b36b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c12a15252bb41f2108c3b398d4aeff3f02a5378a4c43b272c437ab59bad4f3ec
Date: Fri, 22 Apr 2022 09:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650619498
