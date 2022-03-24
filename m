Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E02710ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 02:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648090378;
	h=To:Subject:From:Message-Id:Date;
	bh=lEX4EybbCS8aBIspUOoNkzzzzQwhHagpTZG9u/NxM44=;
	b=jecsDD+f7P+lnLCke9hnODIzCzZ/8mOybkeATSwMq/NjQ7C6Yr7lYhKQK5UgXlOl
	5ziUj6n0JSNC1KMMysU4T2rmhJr1XRtpz0/elvlq/mJeojq1ESKhRBRybyIrCiPxnAz
	EfmVNDXCAgnO6uindk2BC0bV8ENylJ9NncbSsBM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648090378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lEX4EybbCS8aBIspUOoNkzzzzQwhHagpTZG9u/NxM44=;
	b=jTIESJcq9cqe7zM9hOshqV1O+r+CXfGdD3LfsMTKFjn5/+5yi4KmsOoG0YIOCfKU
	DYKqam/OMpWcTRmlsprKcn+8YZy7kHtTiIPlIuS0zBIKiZZNJEwJ5USoFnET2j394EL
	JKMTbEf8ypulDyx7cQgLw6crqdf3CoeIz5B7bu7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9d77030-bdafc4c6-b727-4799-98f3-6d03b50f7a08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c75b01f6647f718e219e43e59fad164967cfb78a68100f5683ca8d7f85acb3d
Date: Thu, 24 Mar 2022 02:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648090378
