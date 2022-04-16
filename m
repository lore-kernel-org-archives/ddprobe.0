Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4632580
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 17:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650130798;
	h=To:Subject:From:Message-Id:Date;
	bh=o2WTGQnOrGR9aaC7af0m2qcxE09onu6yroUtcAwbmMA=;
	b=X8rJCVJbc3PcCbaAlU/WPKQwf0fxFZLrP705cSuBao/nS4WqpP3Gh+87YfrTTIjP
	JP6AHzqrlnOiCQ80LC5Dfrb6TgVoGlrjvu9X5FN56TXSJPVCF9H3/XiY5yC3ScE/ETV
	iIqE4qlOh+7IBfvu+IZJTWQFWcBWuqf4JwsJt9GY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650130798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o2WTGQnOrGR9aaC7af0m2qcxE09onu6yroUtcAwbmMA=;
	b=SgGxQ4SeiD3lGqHunWV5tXce+tSbSCPg53LRarQscklLuuH3Bwmvwh2RhPiuANyb
	+58W7AB1dH+ZAb5fjlFUtzrcRy4hsodwtLHR6bkYcPAjD2rDaWp5XvVbLPoo0ShDq9b
	hyx4txUfChu6pKixk50sab4Qdnoiq6X4UWMbG5nk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803375c6c0-18152efc-54d2-4621-b855-f3148a7c2c5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 984f8e8169ad94879107049180c1658c047840c15d8335463f1e553984a26e3e
Date: Sat, 16 Apr 2022 17:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650130798
