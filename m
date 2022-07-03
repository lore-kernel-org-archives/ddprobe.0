Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4D228FD
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656859012;
	h=To:Subject:From:Message-Id:Date;
	bh=10216gHrAt0Ei9uTHT5y5DrsiGul20HKCMKbrZv04Eg=;
	b=NElY6FwiYL+aSt/a+bAZo24EZzF/UjCk1eWM4GB8a79aXY348rTgBRutjcnYoLSw
	uRTDqtP9S/leXEP1yjOfpr0ovCSaCbYrhm5G/iuhA/GxXGBox5VWKVZ1YsGGSAWUWKV
	XkdjG5Is7HK1iQWz9Jfhe4lHSXuLOdVra5Bdee0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656859012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=10216gHrAt0Ei9uTHT5y5DrsiGul20HKCMKbrZv04Eg=;
	b=UlmZbOPafiVdppSlfrL4sSVPJR2dCijV6pnWu4+ltVkd+qlIJR4AJ/dAgMa78+K/
	MbE2iLOdYvq2egLhJHiwydp6FY2Al8dN0p7aQERtAs7RTtpoCIUBxaJClea7WO2iFAX
	U+lFuK3KKbDR5WQSR7pUnZAvIOFg2Gzx9oO4VKhc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c47e2cff-72ecdcaa-85dd-46f7-ba49-be370a3e7fcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1f308b0536af7f12e1e0fcad18a280bc55e1b72f89b7a0d2145a2387d3b1658
Date: Sun, 3 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656859012
