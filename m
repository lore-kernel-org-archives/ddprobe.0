Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB13D2560
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 12:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649333878;
	h=To:Subject:From:Message-Id:Date;
	bh=h4QCt7gUgPQ0L7zDzpk0xPkgmE9t2eV0CYH4FF1Kivw=;
	b=DFo0IQFW6xg+WtWdpsdySSnK6yurlk3VlbBVMQrWRlzmi02ZxJQ2VleTbQxoo+WK
	UVw6v1N2JTiSv+QtQ7ppEBkEPdmxwF4WE3PDsxlfgXBAN7/7khb/suC1Y2S1S2QBTVW
	mBvrsomxyZ9WGLAUd/AK0384GqFJI6UBbWKamNQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649333878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h4QCt7gUgPQ0L7zDzpk0xPkgmE9t2eV0CYH4FF1Kivw=;
	b=GMbVy+EiWnn027dTJS6+R8SqqeRu+2kgAF9i1Fxfd1ryKB5MSCBP5ljMIlnVVHYR
	3q/bw2XNCzl6/QCXGlnSmKYYZakewcI/sUrAa/xU41XwcAPsrfDkG3X6dJi/OBm/RSi
	zjHAWZC/IagX/L+vezJskf4a5E/0gpdIfb+IS1m4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018003f5bdf9-7143ca8e-eaef-4a75-b378-72ef4a7bd5de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 675646e94398f40ba30b3d560739cacfee06b411d6a4e5d35ba1fbc2bc094f86
Date: Thu, 7 Apr 2022 12:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649333878
