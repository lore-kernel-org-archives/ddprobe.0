Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943BC2F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647521784;
	h=To:Subject:From:Message-Id:Date;
	bh=U46DW2dh7J/P8t16tHt9VgRbjCzW5acfYp0sleUFDEQ=;
	b=DVT3WX8SRbaNa9+wAB6sqy477V3kVspX+TxmxiTJ6gfQkyHMNG1T1qDl4rKvk0nu
	2GWp8rnX2dWFa+i+DR/4UMYrNsPagBFwomhB89Br8Z4nIWfH+f31YmkfUkn5SCmtbsD
	irEUR0f795kJQROGLajQb2BHpYh2dPDe60Yh/is4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647521784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U46DW2dh7J/P8t16tHt9VgRbjCzW5acfYp0sleUFDEQ=;
	b=Kx7xsNG1QyWvpk5nRrQ3Mf/VjVdRU4weuMtHUPjnrk5Lr/lXxKkPejrg3CF2A3p6
	2ngLRaz9X41O/qzOR8bPOfLHkP+7gmI3fe67My/lsciPB4VUki4p1ccBLjeBPrTa00U
	hYMSxEQRFreux2kGfPJXfgfQVHyyvWThrX7cRP1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97f363e1-da7eaedb-bf17-4403-9655-fa31e80d2324-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83f7185171385809d74536fa9eba86c5b4bd8c296ffd8846ee2c8452ac6a49ed
Date: Thu, 17 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647521784
