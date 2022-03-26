Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5232F25
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 03:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648264198;
	h=To:Subject:From:Message-Id:Date;
	bh=pmkmT59zY8M0RcWoiTeSMo8kOgswktvgqeec81Vj4sY=;
	b=l7/aZjhXCaF6IAFOMSm/ypA5w2JPfJ8o+ieHoKk/nn4mzev4PQ0xwrRBko/uPGkc
	bo+al41dgq8mIK4tMIH0LffEFS56HIYLnpvIAWftw0jCzGaddPUzZ4v0p4MX3JAvoT+
	kNG2IIhae620XV8Xc/huBTHZfoclKIMnxzPCz62I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648264198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pmkmT59zY8M0RcWoiTeSMo8kOgswktvgqeec81Vj4sY=;
	b=dIsBNGlXQlNplDf5Hdx/tIotuOoOkTVr7XQxGN1fm/K7hSANl1Pq6e4WhtLzdk1E
	nq01a5/Ip02ZxwbFMQzSQLWvIV2H5BBR0jnKohKMnNb1f5G5WbWHg6N8I7XiCthNBPX
	f/aOeSCluKia2TEIUHDiY5KaL21rBM0H3pL0WCvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc433b8a9-8c4bcbbf-c3f1-426b-9142-c7861a1ee437-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99ba3dedc8f6b8bd256aa04c094df68165261a8d803e47c9eee26bc3b1727485
Date: Sat, 26 Mar 2022 03:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648264198
