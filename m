Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1232367
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 05:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650174598;
	h=To:Subject:From:Message-Id:Date;
	bh=nu2pdqeLP0st4d1EJZm9seh6glSRXyYJRdh7r2+uWdQ=;
	b=HHp+tT5uwNYu///gcmRNSQYvehNb1gsIUCOiNgQq8JGJ5doMyNpGJ8x2GKJtHtg2
	E0hyDUhweP9tTDYcnoz+RFVTAWV8Ygx9R0mOHWtDK2THjR1cf5fZZUiAIFSnwcUkcXM
	gPBFW+78D7W7hIAWAl1mqwwlTmQed4us+O9mJ3nU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650174598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nu2pdqeLP0st4d1EJZm9seh6glSRXyYJRdh7r2+uWdQ=;
	b=dbAwmnZO6kPWOfhwBvqGxXgYhkyfFqeLJkngbHMvl+bqcV/S20cYYCR+acsGEj+6
	LftTwmhJGrwQJO1ePMh3BM0hgoE7n6vzMVVWceuiblwgE7weymsP6pJzLghYmWVCveq
	vvrMmaPSmXx7wcxHoQT7BbsMDjseubl+bCUUyQnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018036121c6c-0e8a6452-ee84-4e7a-8540-3eb154232b3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9317e508e6999f08b8443b582624893da05e863bbd71c842c4396409891fe31f
Date: Sun, 17 Apr 2022 05:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650174598
