Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBC75583
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645304785;
	h=To:Subject:From:Message-Id:Date;
	bh=5e6yWbcDPQL4svCexungBVTC9+5Te7VZZqiFUgFd9JI=;
	b=eeWd36MixMX1zkKMmsiYD87fIxvY34ntTOZ/+EvL8M9IXnKWgN1joHqyZhynuUiQ
	dPrdB1fSJGLiM9oG/hmwd6QUPTqB93nL/SFSqBlOZsEGIqGvW+oRlKOx0Cp9cO1S9so
	Sf5uM1MhJF1j78IwIJNNFo+zWKU3hZKYFbrLdI6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645304785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5e6yWbcDPQL4svCexungBVTC9+5Te7VZZqiFUgFd9JI=;
	b=JYAekANZDY2U4ejKNxZxZwYZn8yp2IdAmMpF7nilmGzlinen1U3Gijw5mEn5/6Zq
	cS+A/8ATy+YBknOSfXP9+nXS6oanhI81Vk3JolVRdT6UufsbmVss68p9M1SI/nPe5As
	QUx1E/+bRueNPMDABGt4dPsmtFKmhoxH6AhPTRVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13cea798-95593894-34c0-4ffd-8ade-e1cff78e6e00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd2c45bc433490cc30e6b4092e906793bf12de854e6d4cfb31e59ad1671e00d1
Date: Sat, 19 Feb 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645304784
