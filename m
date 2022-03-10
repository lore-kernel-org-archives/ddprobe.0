Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821977A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646876184;
	h=To:Subject:From:Message-Id:Date;
	bh=4jG7UgxUY5Iz3WDqcWOFwfAmVYLaS0uP5Bw3bWwJ+w0=;
	b=jmEVFWH8wxbyyoXcN1C59+tl+ddDyIhP8ghYVmj8aydtgyBD5jHCmbADn9Ub/aKK
	uratQu9M1H8bmNocRgb5uc98zioYVO0MJ4sesS991jmQ9m75Bfzep2oh/y7zXw+zElV
	SpBdvzKBXQjWrqzVDZlqhlPVBDqjFESyQxFt1jwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646876184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4jG7UgxUY5Iz3WDqcWOFwfAmVYLaS0uP5Bw3bWwJ+w0=;
	b=Snuiyyn8ptzjrxNXmcCtLv8MhoCZ2vOCj7XKGvMy/jphuAe01oaOnF43bm46hdHW
	Yq77/DT/Na7qitXNBtqwFCEFXOUPNRdWmFa2HKQuQnpr+eT90GPI0ekBOZKkcDbzz8Y
	FglTZBoeFZsbJkY80Z8gTHvFMmJKL8BE15AJHUco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f717850cf-b93ba21c-862a-4bc6-86a7-bc6f8600538f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c897d770bacee7f4f698e3d26be5354ac2d7b4c6bcd6c403d7002fa1db51b55
Date: Thu, 10 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646876184
