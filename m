Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7694D3674
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646654784;
	h=To:Subject:From:Message-Id:Date;
	bh=UgT42HkVDO8o2+Nz23zRII5n7CBr+p7WgpYpxIWPZC8=;
	b=j38KbyAgcGAHZFDb2djpAbSKpLmZyZyYhDnSc6zRRq21pPc4rdSCB7ZPH3JNlxOX
	FNHuKEdfvF4zOzPVyR6HXEfHCoth2y8vUZIhuozmQzvbfWUPDm+d+67hOWWbi4dLLwm
	tPm97v1LqizQDibKO7ZerAroCp11LwiWaaQzvnbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646654784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UgT42HkVDO8o2+Nz23zRII5n7CBr+p7WgpYpxIWPZC8=;
	b=jWdRuh3CW0f2udZjLVgZf+CQ8Od0oFdVuExQZzD/M9hOSqKnhEzo7O3456ZWPUvB
	b43qMmAEKcKgMjIaceRzT4Tl79gh3+eCRvQKao0jR2RzAB0y+jr3YyHSP/JvLKxIrIE
	yLcUZPsWuCtLHq8vn2UAxFGNj0P/bwXpbBzKw0KE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64460508-7477173b-dddc-4115-9497-b02aaacb047f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4735a472aa79732ef7dfdf7b1789b5d5354ed65fe153c0b0861d441f03e793a0
Date: Mon, 7 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646654784
