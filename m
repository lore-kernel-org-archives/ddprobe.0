Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1574146B7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 19:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656358612;
	h=To:Subject:From:Message-Id:Date;
	bh=RfaF8jea1J19Iue97GORc0/wXQ0ldLLMrMv4135owcY=;
	b=dExgZBHflxwaSHrBaJoBr9bwCj1+/CwUflsAlnis5NmTQN1a/PeiAvrI91k2NhRB
	ONNyT3b59V+VYVWGUaqHpGsJVtlzRf9VPRbsALFuJLKL0jdGi65bRBdX1pNcE7YCnMf
	iN6E2EtWt7pHbAVBbY0/g38Br8et5ff4qCJAKdss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656358612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RfaF8jea1J19Iue97GORc0/wXQ0ldLLMrMv4135owcY=;
	b=RPWCSsVIz2xem5Bo7rAefPGm5ZJO0BYVF4v/wiyDTRRmRMdTzZT1EfGkvShAOAvu
	Wx8Z5n+TRr1VKFUUw97vM8Q51Bu1om+sKIT4osgs5uWxdpnuHKerAHRIzTlEYM4KfTT
	A9ok8nRlisNEGDMaVf6acDJttBDD+4x+TfaLCcCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6aaad31-01f460dc-e30a-4bef-bec4-60c500ba104c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e8716ffbc0c93dd85bf3c0cbb928cc04ddc6a454035080876f77b21275986a2
Date: Mon, 27 Jun 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656358612
