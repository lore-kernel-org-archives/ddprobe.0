Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CDB317E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647697884;
	h=To:Subject:From:Message-Id:Date;
	bh=rpa0mvB6VWCenLlAJleF+554HVZ3PPvCgZ4lXqFPb3o=;
	b=PTY6lKW4Mg700fwd11+G5Otlf+acwQyCo06Udxot09PnIlfj7AXVejHc6fS9+6RM
	arjQJr7k8By1Yn29nXHowIwaDPWiKP4jtjy/MeeiVxifp7sQ2mAIht5jaGRMuHs2Doi
	A86DxCuntoJm6zIE4ygQI65lIJuSryvb6QdkGAjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647697884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rpa0mvB6VWCenLlAJleF+554HVZ3PPvCgZ4lXqFPb3o=;
	b=bCYwnJdbtdPeOuQujkjKIgJGB5c3AwnLum4rYZBlxPOoB3tzZDMUZCCLF8wbVJFM
	ve/cyjUn3jgK5mghcfeYJ3Gd6ah37b6vzt3ZRW5VkI9iGd6WxODgIsBf3S1R0jVk5mX
	25VV4/J8ZzOC5rE1jLu+3HQPLL+4EBM9RAWna8N0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2727652-342d658a-8b38-40b5-88d8-1dea2cecea30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78241db1351dd5bf6ea5f8f12bcff6692eaa64751ce7dd121393230d228eed5a
Date: Sat, 19 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647697884
