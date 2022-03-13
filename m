Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4729EA23
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647213084;
	h=To:Subject:From:Message-Id:Date;
	bh=IsPNxvSDHsdUL01MNPFCb7hQjDkj3UlZ6LlGRicHcu0=;
	b=htHmKaMxKM7F/YTvILkeicMNcDTJX3Y6Gkrpvvc3+nuQ1gCIji1PGFdmTV3LSbc0
	Gjjjt2i0GYSBrk2OA4lIEUv5cyG8JWxtVFAWQMOodELQGGeMKdIgOtY56qUIu4GjuOp
	skrgNL8YppF3GvXBe5FqHp3SYkTyTAGzNLCu4rI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647213084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IsPNxvSDHsdUL01MNPFCb7hQjDkj3UlZ6LlGRicHcu0=;
	b=hyj73oAzq/60ktxQo6taFWQmDY1QfVf8ADWoKRwACA5WwNQae3yFQiQ7lN743kIA
	1v6JbMSIFjEo2M/NEgEe4NzsLr4x7sDkSHpKdZ1DCv7TSXlcl1vKNmL01cmlFg/2wYy
	GCZSp8jZq4wNzjjfFBiFE4JxrV7MpWZuv/O+tMPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f858d004b-226bbfe8-77fa-4e36-865e-198e8346f609-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46bb976f98a4d65eb0b2c2073b13b73061c16a8302bb5e81ab41da36acaef1cb
Date: Sun, 13 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647213084
