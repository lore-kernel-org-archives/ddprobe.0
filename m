Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A4B7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 01:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651195318;
	h=To:Subject:From:Message-Id:Date;
	bh=m8OoKRLyFThbw94J/5qMVAQrC/RaZyob+qefO9Ou7fs=;
	b=PdC2enln/hHnGn9nY2+vWKHhsScpF3Y49KRq2Se4xI1/marK8XJjJpcMYOsuJLFs
	0cC+NRj0nOH5X7f2/ZN5rRwPZ46i6a2eZufwRwCeI1iw1tMhfdS0c7dVulR8kHq/oiL
	SCCWbuSAOQar/7DjZBCBgYbkC/9XCA327AvuYIhg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651195318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m8OoKRLyFThbw94J/5qMVAQrC/RaZyob+qefO9Ou7fs=;
	b=jzieM+/5V/WvBDpk/iiQQxAZsricKyAAu4bzH/ZNHsoB0HAzy9oSeBTNugDNxU7p
	fXgaMPMmSFV17d8x9zlpvesW+VGET/Xp2mMuInLZEfI43R9mb4os7/5IPOzvwWqbNoo
	7R7aUi48K+XrqEClcP+2bWp7Ddm8egttIpREwASE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018072e90fdc-49e40a7c-0e73-44ec-80b7-c4582bc0ad52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7a4aa2874496eb86c96d2f3b5478e4a5ecf8b5b6539463bfd7c6a4ed813108a
Date: Fri, 29 Apr 2022 01:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651195318
