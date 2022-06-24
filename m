Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A1D28EB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656079012;
	h=To:Subject:From:Message-Id:Date;
	bh=SNZH34sWfeLYMySXX1MI2QYdybbduTN32TfHVTKFm5k=;
	b=eB7WL3zQMZ+rLRpTO9VJNhuN7pB8eF3eZEsCwVE93dhcfi1A0uUbbwM6so2/5B3q
	KXlNnXP45uY0iUIpZEIf2JySGXnubKdHnmolDbt4zE/TpGUTpNtmRLdsMMx4WD4uyti
	mfYt51Ud4LPvapuw83W6mXLFTtPJA9DqPoBoi3Jo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656079012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SNZH34sWfeLYMySXX1MI2QYdybbduTN32TfHVTKFm5k=;
	b=PpbXnKocl9hh2dnDHG3FrkFpPS6G5DDiieSan5zX3vT2AQI+/5T3zMklS3NU+wuz
	G0Tr0bki17Yn1M0kd+EvawLFbvC8oRL/Dv/dXTXLPMMRFm0fYLPBTNKmYW8cH/SklD9
	4cvc1AKkl3cgz1krHbQrwLECs4RK9BODXRia//II=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181960051d6-d4490206-c406-4896-8b02-701d5701a909-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbd80c11c4af20c805fec5a6b0ca3cafb0d442faf9fdb9713c176d19448eb8aa
Date: Fri, 24 Jun 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656079012
