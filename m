Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369C515A3
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 12:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649940718;
	h=To:Subject:From:Message-Id:Date;
	bh=WVyQUFXBsFdjmhEYuvdlf62xTB5l/yqBzQDpEZx8X5k=;
	b=GYfrVp79uYPSqN0gGdapDOFk+zlX2LJcLT3TH5W2aJwm+3YVc3aq1OBr4DdG3otD
	4P66WmUJt86eO1a6kQPsCJS12Cg+VMn3AV7LG4cxn+eYNRcvTg1Zqx9T12lE79ftOUB
	VtrtL4LI9cVsgaoYMx0VuooqTdrdJwzauiDP2KRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649940718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WVyQUFXBsFdjmhEYuvdlf62xTB5l/yqBzQDpEZx8X5k=;
	b=fDF5OOc2Gg2KRKsXjd5kToisV/NkHP6rwZFv/BWvFhUdd55CwXnTs0MMaCOiI7cv
	IGsAOxv7829cMKfCIUuBX3oct+MVv7ZMqD1FQ3Hpq4FUmvNEqqyPpAiG8TSPMiejz1R
	MxRTaqnLn7BXyZd7U+ttPLfuasMNHieXTFv4u+94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180282162c6-4c96db85-8eeb-45e9-9162-665b77faeeb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31358d8c8504fa21de2d4476854f76a3a9e752c1db9771c0ce71b7ebc04bbbb1
Date: Thu, 14 Apr 2022 12:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649940718
