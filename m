Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C939A7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 23:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648163938;
	h=To:Subject:From:Message-Id:Date;
	bh=hUuI0tRNWB3N+yX6+h1egvKpoj9bqC3cqyEo+BREfjE=;
	b=kOxnw0EW348651ntvd1ZrIKa3rSmPI0t/NaKTA6sbsCNPSgAVjMPe6C+KUvvD2C3
	CL/K1VwmtPoO2bG7HWJlhDpCIGeKLeHfSgxlYnca5se+eegAxGxw4kWhvLvSKR4sNs4
	TkDdQrvQ1jPYpPbejEV6r2pphY0jrm3QP9wN6yfE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648163938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hUuI0tRNWB3N+yX6+h1egvKpoj9bqC3cqyEo+BREfjE=;
	b=CuItIlpU3BPcIR4c0HfZ91Bq52Fyw0riQzXmfWOind7K2eNk8dR85mEBTaOPs0Ju
	OZ/kjtU0tejgbbzP8oH6tKNmZqbcD/62MyIPcX5+QzzEolRdr5edLs1J3anTXCr3xrC
	nduNOQjrBRlrAol+S06k/DhahZRz/i9gl72h/+70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbe39e032-89d2712b-46e5-4963-8f3c-5802d32f754c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d238ca8135fb14129f5c2f94ac60f1b0f39425a9253822b46304285477c1b83
Date: Thu, 24 Mar 2022 23:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648163938
