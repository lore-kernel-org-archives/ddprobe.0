Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE422F4A
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 20:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652214419;
	h=To:Subject:From:Message-Id:Date;
	bh=tGxL6xjF3pRJsCFb8F45p/KpZthXMMM6ErPYNEPd4mg=;
	b=dSl2i5IbfLAPx00fdebkUnBlxiSq2MVmpFlG7in8yKf8BJdZLFXidpX4UlOXZl9S
	fDsxaoyX2+hiqXBMC6EPrP1grfz9cKZWSXEV13S9P+XpNe09khzmS7XUkgOpCDTVHHb
	U9UP3Jy7kjpVIM/dA90n0MEa5NdCCm18GHcah4LM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652214419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tGxL6xjF3pRJsCFb8F45p/KpZthXMMM6ErPYNEPd4mg=;
	b=BISp1ndwmU2tUGVoFvta7hYKhgp/xTSkHBrpGg3vo59MWpM/NJya/mtbBwzcjerL
	mn2NAUlTqSNzRbkdQRK2eDQ3IByu14byBQJyxbCtkcT+KW332mWhpJ9zoEUDPEU023s
	323s8tvPi5P/Zy102J6yLwfaGgfQmVe8nM8oQzrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180afa74f9f-9c7b1497-04d8-46da-b8d1-26074646ce0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dade77b028864c870123e8293b31061e977ba62cd446d4df395634d65813d89
Date: Tue, 10 May 2022 20:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652214419
