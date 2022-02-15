Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7007C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644956485;
	h=To:Subject:From:Message-Id:Date;
	bh=rU0cfOl2NwfvvNI5/ev0xpalKNRLKw6WoS3SaAQ53yw=;
	b=ItjyViWliNgzx4ZSSY9UMP4KaCPpQvL79jna/HSGQA5ngc1riqNoSF29n0w1q+mD
	MdCJ3+VCFMW2l5iMFOWbtFjiuGjXJp7Ttgw0QYIdMv/SfUo2cEYhZhg9RJT06PNGbmT
	eRcK+NufrGT7M1BNanFZL7XzPrXLphcyYQbZIBlw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644956485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rU0cfOl2NwfvvNI5/ev0xpalKNRLKw6WoS3SaAQ53yw=;
	b=YAb6y6OO7QTo2TVRfgiaxiyHgPKhakjXNa2uWn2PU9KCFZ1OXbhCXL24g3ct8kjm
	qy3FZEGPN0Sf0CPHqhEBlP9TID2S+iyN9QBJLBG7Dyo3iAcrVJvB+jtBFmH/N1S7mYR
	u6GNrywt6sXekxRDZF0HAmCkpOn/TLrAXqXM1BIQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff0c04d7-31c356e9-983c-494b-99c9-8a347e13e09f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8d7ec86c02192d6c96a2f85e9c82119d256584beb0cf36028e450bb73e34df8
Date: Tue, 15 Feb 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644956484
