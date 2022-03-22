Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872EA802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647929785;
	h=To:Subject:From:Message-Id:Date;
	bh=mCVplw6mV62S+w7yspOM3/uvdEhJ2+Ba5pYVlNPda0I=;
	b=lPcxq9IzAB+7vYWbqMP3Goso7wiwZY8Idsrr33eGmlD9KmLGS1c7Pm/syf+rPEIR
	TF8kdeDti8GC1fFKSecYhAfgUgqjI6rM8mvzcJh3gBIFKhggV/4NfX34FpAvaerOzfO
	PMqDj97sdsY4YQcw/VPx3sr1MnOpn7iJ6T9BFHgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647929785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mCVplw6mV62S+w7yspOM3/uvdEhJ2+Ba5pYVlNPda0I=;
	b=EWhW5GyZ+h3EGQtvx2NXpklMBUiH/U1NGxtl0YGXKp+VSevKFFLgi0gGzdDY27ye
	afmo32nNx/P1bOpEkNAf0iKmd5QvgHVe9e0HnX4h4I2Q6t73NGW7GboFaUImUfzg/k/
	k7AXodsHAqHQsS0oey1D84zXcV00PICPQJAq50zg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb044f988-1bef85f9-263b-4e31-ad5c-d6ebf64f8c9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72bab8a19a53359cc3cf39f66ba88d4ab6ff26240a6fdbbf0e8ec698d7a50f0b
Date: Tue, 22 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647929784
