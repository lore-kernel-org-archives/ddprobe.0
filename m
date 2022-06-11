Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61637F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654938119;
	h=To:Subject:From:Message-Id:Date;
	bh=0G9rqWNOGMQuLSz93AdlutQqAixi35pQSID0lt/Z/EE=;
	b=Uz4++C8yghXpHodLTeT+oJ/pZTp5uwByjr6bt4to4kSLNkk0W1BPwRe6SaA6VyZ1
	3ZAQ558NOw9oI0RFM1hRFIW/DCrpUjmwTlGK9epe8BFunoIKsAuSeVkA+lu2jVEWew6
	O7bN9aYBFlLiZKtgmYH0Or0BTXJuU4eRLLcu+1zk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654938119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0G9rqWNOGMQuLSz93AdlutQqAixi35pQSID0lt/Z/EE=;
	b=CfnikUvapcbNJAEyHaFRB5qgX40KlSA4chdvxGsLRnpwzgWzsGSfO8W60NbV0sez
	wi5ZgCiq+rYwgMKCTG2ywFWn2vG+/TWr0lsNqqWVgIDiQR+YQ3ZMF2gPBgBoGuXhrjF
	TvmS6EMNKeVZMp0DGg3ek/G9hVAg9l84Tc7uqvP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018151ffac3e-540eb1c7-cac6-404c-827f-bc4bf16a31d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9e60c3f034a2ae0a126a48721322577efe838db2f045d16cb4f8d1b5b63d8ac
Date: Sat, 11 Jun 2022 09:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654938119
