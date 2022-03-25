Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7357E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 22:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648248298;
	h=To:Subject:From:Message-Id:Date;
	bh=lcatPfdeLNZEYtSpioZSwAiXZHLa6nMqB7+rt/PvQ4U=;
	b=Ne6KTqSiElfeJV/z/3AdSRBQ9GCLjb7RJ/1S86h8C4PSQHBV5uAV9eH09wOH/1yn
	B5F4gZqhxsHS5hbB+eMfMVnuUvreid66UEYcl3Jk3ukQOhDfmAldJwbOnF9mlKyGU1X
	zLCnR31nMDgZNUfM4KPq0Q0PXC48+yoGz8aMKLg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648248298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lcatPfdeLNZEYtSpioZSwAiXZHLa6nMqB7+rt/PvQ4U=;
	b=dj1PYzMpF6pXWYvWe3SfgFI/z9szxofLKB83bo/rV+rDv8sRkw0+9QmbBVnbSqae
	aPzyEE+v+wdgrG8fwxo0J8MUtEgboZO8SWez1fd5Hww1DImA3o4ZDyIB/+ZwW2moEN2
	QwulvFsUR3UxWkVu5zbF22VKz9qbbqI3Do+dHd4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc3411b1c-264f3305-9865-4122-b116-f6bcb65ae9bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fe3d695bc396c968f8b2cd24834c5c7cd03cff6ff236e26fc4402fb87d75c4a
Date: Fri, 25 Mar 2022 22:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648248298
