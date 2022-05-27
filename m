Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D33A4683
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 01:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653614699;
	h=To:Subject:From:Message-Id:Date;
	bh=pURBnodeBegighilxIMa53dd67ckod0R+k9Urn6J5/U=;
	b=cMvWtU7SVmaFUIofJKjMmga/C0SgmSNDTMfz8piQ+medaNrZ/IR0G+X/itWG3MoM
	vo8cRipibdvxPWnnev8ZL/5hGa+cYUi8kaWoMtDsJZE1D5m3zwIsXUvbyd91igmh65+
	aFqcDzGbHr8dcrlwfs9eQ4JXmpUtyqjudYyNls7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653614699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pURBnodeBegighilxIMa53dd67ckod0R+k9Urn6J5/U=;
	b=H8j1YfR3PilX+wLSRv8vEDpMjdfbIPanwrfwuGPbCXUvbQxc15SfX45B+30YbA/6
	uAcTEcx2vHP214FcJ1IdSUOrvKHCmq1BT3pUZEOY2dluGHIncAeO/bv0NwnGc77pvOM
	PapRscsj/FV0Jr76a27xZ169GXmyYgD3cEJeUUEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181031de31f-cfd170ac-fdc3-493e-9806-1c010738a75e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a659401e5b0f2c260d9a4294b4f6d4e76ecb0809b926c043b23757cc135d2d89
Date: Fri, 27 May 2022 01:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653614699
