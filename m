Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACD32F2E
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 18:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651776839;
	h=To:Subject:From:Message-Id:Date;
	bh=lPux0fZ968mENL7lUkYNxCC1OWbpmTkpnqzDgr5nhVs=;
	b=IN/d08lw629LxlnWmWQcpP4ooHjfRuKmGFP2fDPCYky0/h0UsSJgsASommFzwSK2
	3gtPfFRxFFDfEzr4vZI72e2FwwUzB+Eu/aftYbPcZUuWBZmHz7DBaSG0q/sasn0oviL
	gbG+onPep7dLbB4ICZgDip/PwHLcfBaRxuh7Cf0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651776839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lPux0fZ968mENL7lUkYNxCC1OWbpmTkpnqzDgr5nhVs=;
	b=N0NLTdeRxMwlfbjuWw2T1BAIUmhS43k9TOD/9QsawqRZS+GVVW+x+4nHHcRSh7OX
	lbn0qXvX3Nszg+fjzF4kdQ8TtAzSyW7bwgFtWRDiTcjjcKoYtNuqle0NVxk5wja0dI+
	ddj7kQAOpdp6pzrtaU58G7NON4DkUrGbmN/7J9Ro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018095925a90-8ca46e0a-dafd-45f6-9ed8-b104357fc13e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c311c4d7f0f43d42f107493fdf72a64a39ba98e846db606ffc0ac72adedfccd7
Date: Thu, 5 May 2022 18:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651776838
