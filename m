Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E4015A5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 08:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649923618;
	h=To:Subject:From:Message-Id:Date;
	bh=AzQegS7PvAtAEEMJ5TpHqKqytSVNBYOpB6vUNSePE/Q=;
	b=KNjYWtrB2Y1grlyjNXQkdPowTC4nLtZzX7ykH7APLacDIf3SDwoiBLKZMp8hWHBN
	mDcjj86kSfP+v3gYms4/8kzUXeWTVTOFlTa7RxqqRtuHoe8TLehuagQc1uUwRSMtIWw
	h4umX08UmzyslOJpXLffpW17SCnt89Os6doKi3iY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649923618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AzQegS7PvAtAEEMJ5TpHqKqytSVNBYOpB6vUNSePE/Q=;
	b=WRqc/qIPC/FdPMq+7VGPyuMEN7lG6UGDjIrnZ53xypNU+in2jG2p5dxZSBoHsjmW
	05liVrMGB+Q6+fg9uva2YRcsFhcjp4i/JzrNtEZy+u43gxNv/4OBr5gtCpOpTVNHP4E
	OoFWTN5kyz4PP9j1TJJx8b26areEIGpnv/syOg7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180271c75fc-339267b5-47b0-47b4-8440-6c6ed0ca8840-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d740c38cdd731aa2c006b1b0bb6d0446ddd5b272ddca9c6ec6f65ea21ba851bb
Date: Thu, 14 Apr 2022 08:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649923618
