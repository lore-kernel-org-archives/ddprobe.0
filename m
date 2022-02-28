Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF847A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646065885;
	h=To:Subject:From:Message-Id:Date;
	bh=p7iXnLu/PJahT4EPD+PqDMu+l/b0Yx0ELIxuNeVZHcM=;
	b=GmE82I/GY3r4aTPYT/5vqkzysJX2Kdh2rApuKfAfaVSepQHQ8URdHJ9HrJlRBE8V
	zkFVp94A5eiEDq1UDg0LOBSh7WqYFDRFO2W6b6j1Q2Sh22kfB6rP/L+QyHPobjXz6r0
	oAwN36BCvMm46PuAwc0tzPznlhnfWdhIni3QO4HM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646065885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p7iXnLu/PJahT4EPD+PqDMu+l/b0Yx0ELIxuNeVZHcM=;
	b=ftgM8eogP3NT6A97W/aNqa+v8NMki0Z+h+IjAFMLPzOeQ/0bnQUCjiUGd57WbIK1
	EwlkDc2KwkGbjdf6zhr2//0Cl4C6EpetXx0O9dzD0e98kDBiRLYduce4nJpDLBcEFXA
	MZhdXY9cXPGAHae4UcDMDNV2q3JKXVicAIsuxt1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f412c1e5d-45a217f6-4e0c-4416-bfc8-eb339d9e39be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e48557f06afedeb4a77fc4b458d077970851468eb7b7a909d814430f8684bda7
Date: Mon, 28 Feb 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646065884
