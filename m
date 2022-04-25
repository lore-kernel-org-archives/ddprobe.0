Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCBA7A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 10:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650881398;
	h=To:Subject:From:Message-Id:Date;
	bh=yuWTRBQgIFf0JoHIbywg9LoY8P353KdwG2FBUNLRRDw=;
	b=fuv3/2i5VlidxILUXbhUQihuUFKPtOuD4MBtfqVYv6ZgzrVExZB90wvYJP5g2Ge/
	CzCbUMJEvupyweFwj1hbK+21qEe9Qq30uMREx5lMk8wcnovNdf9CGpsMGkxHGYND90d
	Hb+YG8fYnK0w/dgVjyRWiF0iltlBOmKhDWH98ZyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650881398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yuWTRBQgIFf0JoHIbywg9LoY8P353KdwG2FBUNLRRDw=;
	b=DlgcZ8tVPrzB9r+Cc2TUVYMskOIcpsxugaK07apF5IWfH2nGuNOFRomSnDAau/OA
	1agdjb/qAATfBD2tYVamyZO/dbU1dCY3ld2JcL1XwaljdcTUALtWy+Wj9NAqD/ROZDN
	rIMt6KiAIu6uNSPy3E7ale/h8CKIvHt9e2O5GAUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806033065a-865f351e-23ae-4aa4-95ab-05470abf2e6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 655821f18d84e0b8f144584b417931e2fe4e1a691a47c2fae1533acd15579a3b
Date: Mon, 25 Apr 2022 10:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650881398
