Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B9D366
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 00:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648601998;
	h=To:Subject:From:Message-Id:Date;
	bh=LqtHL2oCg7VEAaJJeOLDUt+2vBbvmLj9w9U1zIbHwjE=;
	b=YBCHxC3GPjZtFZMbl1p65/22W4AX1AwlkUn87pzLlsSlRyGJ1VasvrgZbnupXA3M
	oXNFM+M7KkGluTAYb/q0N8OAjPZnVWmsVquHVNWENas8HJ7PBYP1nvzpSxm36tD3TiT
	oCv3s/r8oIgqSUufCeXN5vsfF+yvETFVq4gQWP2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648601998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqtHL2oCg7VEAaJJeOLDUt+2vBbvmLj9w9U1zIbHwjE=;
	b=MoDc3yXHeiS7T6ULmo+sHYO+/eUAniVIb68UUhnZFDgZkvDaTNZc+2xbw+y+gXrR
	mXKLqMup+yDNDPuTLiOV5WWggA7+VtcVuP5hWi67MZLt30akUZD1jjxnnjFQ+vbJm/O
	MNJRTM7pNfGKzjMzUZTM2zlm4LuS+OuMEarKAhoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd85623ec-89bf53fd-d0ee-4961-86d2-8946e620cd67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6a5b1a47f9a012a1d6cfcc3243a5aadd261129733354f0fd99d585c62d48595
Date: Wed, 30 Mar 2022 00:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648601998
