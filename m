Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C1729A2
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 19:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652988479;
	h=To:Subject:From:Message-Id:Date;
	bh=E99AwJA2LnySqIgUvY3dHqGbF4cEGQ6Bloc6suvBeR4=;
	b=La3iEHPtkxyhUi3WXNfLPEmcytD4q825ap13FTG8vCnySdfRVpJAlCSewT/TA6/E
	VbNMn/hIEpSNaP5ezvJmx0mtSjF8mTqY/c2zbPuPFg4Z/mf3Ofp/Bc5QAEN2MjWAs0s
	MHoLEhjIjsJYQXMRtB+nLqdV9bKtBmet43L790+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652988479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E99AwJA2LnySqIgUvY3dHqGbF4cEGQ6Bloc6suvBeR4=;
	b=Q1UGca31iFH7vVo1kNM8J4QR6DggUwU4CfhQ5kkrW2cKq9gQivGcLuDLrpeSoDsK
	RcanuUbq8kEEBFMBGQOUsnUdlcA3aAwaDrfnlHBe7oXkHJZK8R8bTa/vcTGBJJbplTg
	GeBoI/7QPqaxEY5m25aM4b/ysXgMfr04nZ0Otm8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ddca8722-5e1b5c2b-8127-4a1c-b003-269d1e04f5ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a6d9d4e2d729af5cf9fe13d63add82b3917c7ed59c3321b7fc916ca4b07c0db
Date: Thu, 19 May 2022 19:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652988479
