Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA7A2F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645944984;
	h=To:Subject:From:Message-Id:Date;
	bh=+7adJlRxwfayhqSsru6Q8a6T74TUGTEQc7WkFjUvPkg=;
	b=AWFy388HzHH1rtBNSILTX6xPKIXHEqeWvr+O8rUXsAtheyQbliJR5LCmPalYMd07
	NvK8dx2uOHD2ZwtUmkIe0PzCZTMC/w8IWLML6z6AzWEjLgPm7g4DmBdyOvDA0gAY3O/
	cz7x0+SsK/jJHlWYf0NhfWiNF/Ih+U0rVrmQRa74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645944984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+7adJlRxwfayhqSsru6Q8a6T74TUGTEQc7WkFjUvPkg=;
	b=f7wUt6I2oTkeddtFsQFW8llVxXAgKFEr33TUgqTQnpskkTgQkSSpGrNDC76ubsXh
	vNEZr2h0lqJkfIMEQtuk8PpSG2R2Af3mmzyKjWmDYqB0d+k6gNxjDf+2S3RK/6lkqM8
	nM9VTNpc0C707y6429eutdx5/szSpSHjCDNxYTX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39f754cb-9d5ccd21-6b73-4f60-923f-793afc34159f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d63651abba2b6ec04a7b59cc081c0cc551d0f0c467f9cbe6d427728a1be2a688
Date: Sun, 27 Feb 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645944984
