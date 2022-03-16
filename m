Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38854688
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647420685;
	h=To:Subject:From:Message-Id:Date;
	bh=mZ/kISArHqwupzjPJSA7aGiHahbpU6VzsMKC6iJdOzw=;
	b=lL4VDcgP3CSCmZcL8Ttx4kiQ9wahM5MdSUz2cc2zD5IyDHUHwrKvvq4/J6Zcjbd8
	nsiO2YqOVIzoCn0oreT1PbrWyoJ/nZNBWVSXCAqAUiw4UJWkv/MdkQ+kDQPIWMxzUwD
	JA5rbaZ+3f49Wz6CP1ccQvy982F8dbKtcMF0qw0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647420685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mZ/kISArHqwupzjPJSA7aGiHahbpU6VzsMKC6iJdOzw=;
	b=H2w+ruqdGgArJHssqxrEfgS9aDdW0UWHjEo6j+4dU7vNGkfUV65uqH/C6Ei+IDYn
	GevXcvbIdhRhF5yFig4Ip82JqJdyROZIFVBd4ptyipGzeKgeKjho/D2oaphP/BLhksr
	MFYYpV01fOrROcu52hXIHFqEMoRQic8LCtBl4Nas=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91ecb9d3-7f51751d-1548-41c6-95fc-6fa25f7de412-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5213de26be6556b4e363f7ce7187416c46bcaea00497969bbaf7ab532970f65e
Date: Wed, 16 Mar 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647420684
