Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C922C2F5C
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645561285;
	h=To:Subject:From:Message-Id:Date;
	bh=hfbDLfVxmUNhqELHgeguGUyZLAKKf9dZ1KmDZtDm2wo=;
	b=FUDMPXJOZUb49JvOY7ZyNjDSFQxvaNK/DcOJxWa+9iv6RtYV29Ev335ZVnx8WCTw
	+mRAzLjLJAsNSbAHiZDV4JseOLw6QkipO+88tbpZzmSFCxRj3AeRui6BSsbLy7mt5hP
	munK5TyzwPJmW4LKFTo0yT2z1B+EQEi0WqbKZEzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645561285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hfbDLfVxmUNhqELHgeguGUyZLAKKf9dZ1KmDZtDm2wo=;
	b=H885UP7PweVxtE/sXsyzx4j5npCRwXJ+SsalLSYwcuZPKxoA/GmXL4KOaWICz19p
	QmNGsagwiBHKv69wjfDfNcvigVRLY88ema8T7DnaSYGYaT8R6cnq922a3uteaZOi8UK
	d/ks8ai1imiNfkhiZa4iCSzl0GGv0I6C70ZUlGGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f231888a2-3ce9fa8f-2d74-4b6b-8cfd-3bcf84122557-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3103f55500f9cf7c11a22b7d8890526b231bf0923246f60439dcde7a387874bc
Date: Tue, 22 Feb 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645561284
