Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA853D75
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645095685;
	h=To:Subject:From:Message-Id:Date;
	bh=OWW+XECPugLpQdZs+/p0kmBRtYQNN4Y8PXS6wgtQWFI=;
	b=ILZPnInxlLp0Gq3Ew/VtxEZyttHvZFgscfBQEaLD1i5hnmFyKi2D59FCRv3EPyW1
	RY7cWWAq7NKyO5HLi2Rz592/s5zIzgIYMwx2/dCsgzhGcEsZ7TURdRDW6pV4/2RHkIx
	nlIEXo0sLTfvEwEPNN1F3nvs8ml1mSePKrSSDwh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645095685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OWW+XECPugLpQdZs+/p0kmBRtYQNN4Y8PXS6wgtQWFI=;
	b=DnvgWEIOLgNh1lGhi98sjaj9Ha1U9LetGdxJD3fxEayafcfqyXB9yQqR+vYeFRXp
	L0QUkjqTFWAX+TSa2Z2HvWF5KSaBbjVyE73QWvSSilL6ATyl9RSTP8Gym65o1QGTD3n
	zR98eqzAN6Vn9rHTXy4p/IHW2+Rr7ql/fvTVWSCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f07580a8c-db338030-e770-418e-80a8-9bf88d6d392e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c83ea81bb11cf9f0e80ba50f34dddc9fd44162e63c01f90ed96437d1f3992752
Date: Thu, 17 Feb 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645095684
