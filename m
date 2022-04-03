Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78E27C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 03:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648957258;
	h=To:Subject:From:Message-Id:Date;
	bh=XnwvI/93ygvlZy/fG6f4GmQnMFYCZNOIqZTe9C0MZ0I=;
	b=PDeDjBTnUz36Wlo5q24icwzS0pwIyGKPwJCTA8WMM/hlBE7c8u7K6mebFh3o9A7n
	OuM487GzLwjWNrrpbSlsWoFqoMs/46GlU1j9yX3JWFMcDpef/yX73wt9fD/qaa1JELW
	mkcjG1k7L64xJ4kdIkP23EOnKt2nX88L+DzadV+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648957258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XnwvI/93ygvlZy/fG6f4GmQnMFYCZNOIqZTe9C0MZ0I=;
	b=MbNw2dDNNq7Y0Gqzviyi4r5GQibzgcvZQNWvwhENFDGnSX8ahrHTGj1djSEfhUiL
	xx415aZfIU10WIbAgF+wTi2rBj2fy+hLCyGmNMEci2Zae+F1DCMYBIOsrs4Yf8g2s90
	EQjyvkQZ9QBk7Z3WIL7i/7n3kJJjSNFcOB+mHqwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed82f9e3-0fd4265d-28a9-4167-a073-25a16ba310a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74aeba4c1884b9763ac594eeb87e3203b7dac2d2efe0f0bd83a12aaa99148da9
Date: Sun, 3 Apr 2022 03:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648957258
