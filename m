Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1F5ED4
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661254252;
	h=To:Subject:From:Message-Id:Date;
	bh=URvi3ei0ts3T6zVJMdlPcdGEmSGoPGtaZhT1g0kUwsY=;
	b=J93zC2rkc+j7tb0+NFIEKexylg0YTGdLqIymHo778fP4Bbsz0kFIuGxqxEPlwWF+
	u7QdfPfsHsrMVkxo01DtkGcyvnv0g3bxFGquMhIvFO30nZ3+cwyCJu+bp6wTTpwLi+h
	nizla2coPp9eiTAApESP/4vOhHKTN6Y8T/XCxFKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661254252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=URvi3ei0ts3T6zVJMdlPcdGEmSGoPGtaZhT1g0kUwsY=;
	b=gNs+KguDoQz8zrB2MZe9HE7VJZnPLMFv5Isq+PKNo/Xbw2v5DdHEgk9BPy9lAvw+
	RPxD9cvp/UQY6OSE1WCcaxjekTnrhAXbe06CrjgFOmBv0tfGO5ov1TSzUVfgaz90qQH
	NfjPLVzhuCi1jF0imS6gidmUZ+bT4C6qLBok4/H8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca78380a-95da7d12-cd70-40d5-be0e-a5a6d767666e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f8a864ebacf71035db0b0f8d903db6c753d2790580a40d3934d2b9bad9d6560
Date: Tue, 23 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661254252
