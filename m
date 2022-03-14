Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A596AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647296784;
	h=To:Subject:From:Message-Id:Date;
	bh=LE6uq2sxPxI9bFCBkw+W0I9h6jt/rSiFREblTsVTgdY=;
	b=fH4LR7Ufn82HHIskXjAlyhBznq0aARO1RfvwXAA7CZaTZExo0MZCzdFa48Ddw7SK
	0riFlMaBE9A4HrnlHha9SW4keKDXhu7370CVRbiBxtbc01tp8C2k6cboMywwqdkHDh2
	Ttp7WG2iuMCGUutRUQSPPITV9Oj/y8VIjJIzj0NQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647296784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LE6uq2sxPxI9bFCBkw+W0I9h6jt/rSiFREblTsVTgdY=;
	b=UOsusU6vyZHxW455quj0cbY4l6TBCaU5TIlEvDM9mF14zJpVRDrkYeWA3FEIMArq
	gwVXX6TfUBMIX68iPTJPk+UN4qouyoJEPGm6Ty7xjVsdp2ehwBGNMsTVjeCA2MBsr6O
	oW0KQ3x8e/5TyPEJgZgLPHfnlKIevRxKCevJXPHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a8a2952-edccfbaa-2b41-41f3-8eb8-770d77cf978a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3dab2428de47eaa9b718584888daa3d86be6d647bccff00b48a6d89e551ce64
Date: Mon, 14 Mar 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647296784
