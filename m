Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5190E2572
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 16:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648570258;
	h=To:Subject:From:Message-Id:Date;
	bh=24614oIHhxi5ch8obKAjtM0/mPFiVcEIq8a0ycPDFGs=;
	b=aU9Fa95TGwLWcR9SBV+nl7xba7vEqgTqkeCeB5ssF9tuAsjGwWlrTyiwmSO9dnz3
	AeJlgkOep/JV0yGuXGdCZpIk/MPHmz8h/rFP6kuOX9VG0Aph3ZnK/NaZ0MLizcc3URd
	IzvOv1IyekcY/qY6a5RufdgGJSFYLuywTMeFW9aI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648570258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=24614oIHhxi5ch8obKAjtM0/mPFiVcEIq8a0ycPDFGs=;
	b=HGUW1PXCrw1vOK1du9Bj3ak3T8u3pFl0HAZNrBvWOdVw7C/YX4WcsPlOVhxMQfgw
	dPyPu1zh74EfrwH9Aunx+34gL3qbwyDtwePU6ykJPiHBw3RstURK2VoESNNSY1KrKFY
	ESCnm9Ey/pEp7iQnd5mUZ62QB/uBjxehz0ztA23Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd671d3d9-7784342f-5735-4bbd-8e68-dbbfe44138d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11b594aeab4aae7f78ee95cb7c45d39cc372fd0f1c81f88904f0da97f72db867
Date: Tue, 29 Mar 2022 16:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648570258
