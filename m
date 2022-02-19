Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513555383
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645270884;
	h=To:Subject:From:Message-Id:Date;
	bh=6pr0r+6fJ0nVTZaOJJEvL6lr7awKQElkZFI6IaWdpc4=;
	b=ekOMPigmbAbxHMzKwr/TRxVYYT3BoX4aGT2xc7fefxn2cwTCEuZmsDdgPY5ndYl4
	CZ0XFHUWEzQ9ty1dt60Uw7mi7kHDN4+IhcernD0nMhZo5UBSXkmnBZ/iRTpIpwFv9UN
	237CqM5NXliGtkiTeh1ujVB27JZebCe1F93xmShw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645270884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6pr0r+6fJ0nVTZaOJJEvL6lr7awKQElkZFI6IaWdpc4=;
	b=K5ZoZY59Wv9gUR30k9nYg1tSWvwEyT1Z+WYkWgr73fZl4ohNrDZ56hWNO777POw7
	LnXuAE17kE3z53kms9QvsQCGo8hYYnygYlfa3MBcf5Z7REHxOQxbyvoIu8Xj8vqJD03
	0sRX5KFQqcZ1nVckCHmJnCzdtMIjHBtZcTXpp7Bo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11c96186-80c993e8-0288-4e5e-96ca-62e5705979ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b2ec8270d5f4110330d5f129f0a502a76e0558ddc117c6fde268ba5a8a1b10b
Date: Sat, 19 Feb 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645270884
