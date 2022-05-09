Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D7A1FA0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 14:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652107619;
	h=To:Subject:From:Message-Id:Date;
	bh=a2JxKCrQWDQDZeSlmLnCfXsCMt5G/Z5t1oqZNOFriH8=;
	b=ljQu3iOYPMioXICsr97JYxSd7xktqkaVJLWDQmh5N8TUROSQ22Hf/P8cO1Rb4BBu
	izKB4aeHHKvQDy2HwLDYYphy3diO6sqKpVuX14nwHa3B6GPlvL+JTrXSiEqU88MHpWG
	vhQNR50VUdvQoRezAXCcy3mBrGTK3PrRFQl8qR6E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652107619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a2JxKCrQWDQDZeSlmLnCfXsCMt5G/Z5t1oqZNOFriH8=;
	b=APR34NQdXsPaadOwf0eg+8MKpTXsdCzbpK07Rbqhdhzuvx09jEp8NSd2D9wePORk
	jbYuXNZcXmC3+VOHMIbrzJtBO5AdNB7qgqQVeiB3VdEn7MEr1eJU83UZCgPqCvwvPRS
	UG4HQso8NFUNBaFdo579hFnqVNIWTflZW2Q4KVpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a949a849-f0f35df9-0678-438a-9ab9-cd5b290ffc1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e7f32dfe64f4c13ae5a217234624fe136e34060b118d5cd62d17b7187ef05f1
Date: Mon, 9 May 2022 14:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652107618
