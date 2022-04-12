Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039E51876
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 05:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649742718;
	h=To:Subject:From:Message-Id:Date;
	bh=iZ/zW83+r6csCtY7XqVeawd3FSVxboZX0qcK85ZcXMs=;
	b=Z474dEbgtGMXU9b8BSMA4ICmdrXwpuN91loXGckv7SaS3YNElyGyWHo9MCJteIT9
	06g5aS79N6VotV8InFkWj2MMz1HfBpX2hkjIQovL41cDCSkVUow+p8JuME84+zUbZLu
	TR/rUA+YVn08bFkXJLLoDVZNS+4A1ByzuL7eq6z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649742718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iZ/zW83+r6csCtY7XqVeawd3FSVxboZX0qcK85ZcXMs=;
	b=d5R3uThm4eN0Dl6076HAlWjBmVlwZ5yOWwUgfpUWcwzCGewOpnGm5KLR+wDSuCXJ
	E/2aSjZmU6Gf3TP+ztWvVnPMMMhJXEIz7t74D5uZwfLwYEt+uRuGNWoEXJGe5XpgxI8
	UgAbu7wjV/3R06wcPqnKAQCfwiovwdlRue0zwJh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801c5425e6-3bc442ae-f567-453e-b447-84ad46fe3795-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 016bcf7c989b2e5d113bff172b990b6aac3e7e83efcda06b6dc4375d2f638b8b
Date: Tue, 12 Apr 2022 05:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649742718
