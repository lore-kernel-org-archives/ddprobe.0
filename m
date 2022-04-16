Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B96B7B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 22:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650149218;
	h=To:Subject:From:Message-Id:Date;
	bh=GcHNZaOsnjyoPchREbJ4e3WHOTlfgvU34gqT2GiWUvc=;
	b=DkBxEbfj8r2wIiZJH6AJpwXagGUIpPo6bQBMuN5KPS7n5DM4HpKiyaDOtPzDY/U5
	k6GMNGw68mP595zacbUh2iBIW3UU0WSmQlNuXEDhhNag36YSPyWM4mjuXqnF1rpypcJ
	pQP+1054RNzjPEvcuLHaSoiXf0Yp+OmpKy+S1Wl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650149218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GcHNZaOsnjyoPchREbJ4e3WHOTlfgvU34gqT2GiWUvc=;
	b=aZmgTuHikRBjEWMYnEEObrM3o4Xm9zMb7AFbxOtk60iyQSYPwmkqIWCeMd8lziU3
	Oo76mhrBkV9YG5TAW9kgTzhLni8yjalS3axsLC5GrekIic5vyQB9i7v0/7Nke2OeL0s
	SOtUdeMVh7Ea4l2uiMT9LMbaK7wwM/26+dNF1Lm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180348ed80a-52bdf901-4810-47c7-9529-b1e7d169c687-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e89a4240a3ed8053a3ffb35ca68cde88e6724b32fb6e5ca87a5313e83640db0
Date: Sat, 16 Apr 2022 22:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650149218
