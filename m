Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A987A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647839485;
	h=To:Subject:From:Message-Id:Date;
	bh=/4sQmj3GAAvbe8LtEWx8do4EQra+nH3DWcnvasizWeo=;
	b=GP+OwF/8LavDH1r+d8riafb6V3qQQOM0hG/FGr9e6zuLixBP+iWutyqX0+uEiYsZ
	9PwcvDjg09CrqjJNRexPZ6v1tE+PY9ix2aFe6ab5QKb8pDMYBF318hbwRIPim3qMYls
	cdYAFasYplQeqIflo+SKEMQ2ojZ8hGFjKJVF+1C8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647839485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/4sQmj3GAAvbe8LtEWx8do4EQra+nH3DWcnvasizWeo=;
	b=CCrIv06osj/Xs1U/bLTDCbmBOBu5O6rnMKM9Yy1HCBtH7nc+tq8z6k6wgVDn5OAB
	EOrqSpN5Rd1+eFeFPdJ4Id4PkFt5DMwGAZ4DCkcJYol36P/QtPMGMmLZYacaFw2Ko6L
	ro88SZoWxNbjs5KxDebjqs1gXu9NA3pXyHOatTAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faae31b82-9a5e983b-1d3c-4128-9eb9-fb0e3c33493d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8abd3390a6ae113f1bba323d784a2372be909f6ec7411268a9a1a007ff6e5600
Date: Mon, 21 Mar 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647839484
