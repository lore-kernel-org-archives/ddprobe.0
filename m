Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62F248B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647602185;
	h=To:Subject:From:Message-Id:Date;
	bh=MtPX4SldiZ3NU0e3FgBT/8+KM3H/vsF+QiYHV2IeDgI=;
	b=HWgY89SFPFbnwUCYtEqTukPJpQhrWBs1oMIiPZaAWTx647QmfFNIecMXgqkB2Qoi
	+piWYJcxfXMV8ps6grody8IJhYgh3OTzjxhszWhZLALGzjS7kFaoKWxnLZAvZTRFN71
	dnJXje0CQlKzdwisO05qHC/aoI05OguN4jhUVWro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647602185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MtPX4SldiZ3NU0e3FgBT/8+KM3H/vsF+QiYHV2IeDgI=;
	b=U05+BMh6NrAQXyBjYi3qBPvFSCirNbJaoF9VWv80y9iwM39ECew/ydgAocGQTkq7
	WqfljYssrOIeDXn+NCOF22qTrL0S0m7eb7MX42efPSL/KOgT4iX3yFyypmgj9nOM33d
	38AGtBeVPiiSim2eAdgsxHpP0Pr02wVzNZAM3MY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cbe3260-dd66d155-b5ef-4452-88d3-72ae9512cac1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfbdd27e35518c4f55d46340624c701fc487ef50b689da055abfca1cf06e32c4
Date: Fri, 18 Mar 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647602184
