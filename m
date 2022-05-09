Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4281FAA
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652105158;
	h=To:Subject:From:Message-Id:Date;
	bh=WxZzGlxyhGQeEvXZpLP0PxKDxAMJB6SVLCYvGchBcqc=;
	b=cWMf4tENj20ServV/WgTBFFbpDAD3w3ml9Un6l7QBVDWFcjOBV+gBRD/6JoTyjo/
	DsCST5Xmh73qxDiKZJyTZZFZhlq2KerDz11cI1tLjI9Ae/kjrpW4G4504+AEVcLWT1w
	Vb8jwX/ubolzCwH/wM6a18BWMJZDoS3aw7M5mFEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652105158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WxZzGlxyhGQeEvXZpLP0PxKDxAMJB6SVLCYvGchBcqc=;
	b=kq8kN/+sbjezBXwFJ3ol+j8DHRgKkX73qtifS8Nv7bM4woiGfnjy0XEV1cKQB1Jt
	fURj+wieRiIb6F6wKHiUtQU0MyboNCYX41n8W8cuxwhh6X+05XuT4JVDLs1qOUubDrw
	r8Raq4DahxsMae7SEAUuPOsaAaZV79FSB7p7FNU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a9241ea9-66cbff5a-8a05-4192-9d83-14d7a8045b77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6eb7e9b193d3d0a5ad4bfc3947ca1d7c3c99c182486d86624e75aa7658ec6827
Date: Mon, 9 May 2022 14:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652105158
