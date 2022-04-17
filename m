Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0322368
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 01:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650158218;
	h=To:Subject:From:Message-Id:Date;
	bh=jodJ4/Nj2KSQsUBS4AXFh5wrVrvEpnkL/XG7z2G8bB0=;
	b=PDmIUs3rUjN/amUU1tqfX/Yo1l72MNNq2Y+YtjPpDEIz+lEXzhct2pwIQsPG7doO
	bQbtteD8Lwb22PXf49VOPZ1e0AGEXoQRVIC8iOsmB2SXj/R0H9dYJauSomLLihojJaw
	Tuziyx2Gn0f140ymOu1pZeljTIz55qC9pOBDe31Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650158218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jodJ4/Nj2KSQsUBS4AXFh5wrVrvEpnkL/XG7z2G8bB0=;
	b=TS3LwJFQb+cPX4v5iqI5BPCJ8NBJbDXcCQHpiFnDYpcevkVQVwSCn8Ke3gYO9dXF
	IBsuOOU0DbJQJL0g8BZO5FA5iPrsOWo0rXpXsx0+bH98Zf2lyJID8Z6ymBSc7sBq2US
	PA6eMSd9PRi3Ls2LZADZQ1CeWnH28lFTJAOJ22fs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018035182c0f-7d26ea9a-c835-4cc5-af05-e64a8beb8222-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5f7c03261c25a01052cd6599f0b138d40a4b6e2e7b695cd032c30984e60d80f
Date: Sun, 17 Apr 2022 01:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650158217
