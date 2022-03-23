Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D001378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648022485;
	h=To:Subject:From:Message-Id:Date;
	bh=G1oJ5znUlSENlaJEj5zsTzuSipt3os0b1GUqRpklk68=;
	b=PoF1nmbg7gamO/USEqdSckOjr/KmDcFHrPCsx3SDX3Fop8QDbRi2H1rLI2+Un0xY
	Ss5Sr6tnEQt65wX2h4cX/EOOZMbSJtndOSiyCo2mdYf/Q+4l7A7tdoSPm5qZW+xTvsT
	Og3Cnf2Mzsg1td4ePfYj5ZmuG3OW/vYlP0jcObv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648022485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G1oJ5znUlSENlaJEj5zsTzuSipt3os0b1GUqRpklk68=;
	b=Iu6FqifEwPWNhs397+ux80rULAD9M0bIcWzf9yQ3dEhCF631BXsnDkozBpm/9CU3
	qIv4tPof5LS562ztaO5Mp3Kg/vJSvVJKtrTwhNEgY92FLSFJ6cByzckqtmfKdk5AsIv
	oUHW7Vwq57FsuN8Ve49r6F3/fzNw9j7XZ+B0TikI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5cb7734-ed2b57a3-6f93-4b17-9a17-802539538937-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61768d39b16d068c904e485de9591aa9de14589b0cdedd1610c50d94599b669d
Date: Wed, 23 Mar 2022 08:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648022484
