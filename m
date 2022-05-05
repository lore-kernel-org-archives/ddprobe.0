Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537FC7F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 23:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651792258;
	h=To:Subject:From:Message-Id:Date;
	bh=36aawStbZUhJMrJRFNGWaI1CM0/+gI8e4+rdsP8fxOg=;
	b=YMcem/KkhriSReGcQ5NtUGL94VzbHrAMsTFFeVBBmO5eLlQDYm/19Casz/JMXd7M
	WryGvhP/DrwWeBcYR1KQcSj4N5MBXB1Ueowxd91+MWUFMEyqnC7qQJDeCHBf8lYqxhm
	u/wTI4ePEoNbA3kXO2w7Mu571xDA4ccHh1ziWDio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651792258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=36aawStbZUhJMrJRFNGWaI1CM0/+gI8e4+rdsP8fxOg=;
	b=MIClpp7BAIb2Mz4xWUQN0GwWNcs1vFAx0x6YTIk/7T4LjGQwavWtN5BE7TMPq9Wd
	KTX4NvJC6ya66IWxd27Ih4/LkQ11Qq7maArx1V+Fxl6x5/qBUARA2iTrYC8hMG7Q7IJ
	9braTgPSFlCpaaNcQpllP4+YenlMhsvhN2Ooa9aE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180967da4e6-5965cdc6-0994-415d-a5aa-94dd10794bda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f0e2b818ec0931844585f5743f7311ab3b1065f25ef03dc3df4dc924f260b84
Date: Thu, 5 May 2022 23:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651792258
