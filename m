Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F69198
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656225412;
	h=To:Subject:From:Message-Id:Date;
	bh=tjJ39OWUyZ4PHG8i6JJksYB6jL2HJIbhKtuA1QOSXb8=;
	b=hVpbqGZgb1ieI/EuKJ8UqBm9QqYFBCAt9c/2lHIZ31aBIxzGgFpwdN/U0OEv9uG9
	PwO+evYRT7dt0kF4GhDir+HjiPdHd2xOIIyYgWKS6DxKaAKZU7TPVzIdZR2Qj44IdEm
	zEw1P/OItxQsefcqUsD+dwqvkDImRRS289lm74Ks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656225412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tjJ39OWUyZ4PHG8i6JJksYB6jL2HJIbhKtuA1QOSXb8=;
	b=ZpGmt9AaInWn/gJqPVU8Otat+pPvCIx9Hyuo8LPb/UBghLdtjmFxTVwTknfE25hf
	Za/KgERPWXgI5xeIlSPiyPCm8UGp9ySP3mNRLwn+Jfh2lyGGG50g+Q/353zKHrczb4p
	3x86fzcZ/R+OJ84nGq5nGMKsnsiyRSs7MYeeKCMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819eba34e4-02614861-26e6-4fea-81e1-2dc41e693db1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e35e8e768204a4d327e4f40c598f1b69d246db0607371a760caaa66823f7bc16
Date: Sun, 26 Jun 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656225412
