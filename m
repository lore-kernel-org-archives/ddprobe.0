Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D6110EC
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 06:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649660158;
	h=To:Subject:From:Message-Id:Date;
	bh=Mdxv2e9P43i0d2/oYISa47HxznDXSIiATdUaPyUftPE=;
	b=QRv69z1G4SYSd5CR5XDe3T5MoKe7NDGLYrSCES+JbGoxHYhTdU8RiyfBxSFXeLAB
	D9/urChK8L7KHjg/itQi1Yi2NtE2WbWHGgqr3y8bpjMCxXzam0uBtYE3Wgl4sYkw5Vk
	+tNQsXx3JobeA+NluMvTUbYRtDkGSDeMSqeIaRWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649660158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mdxv2e9P43i0d2/oYISa47HxznDXSIiATdUaPyUftPE=;
	b=Mov7ZduzdAplExd45SjKLrQdZWCRd8e6vKj0+UbXEAkzzFVJ8xqxjcwgYKtc1Fye
	W4ejqBIiqLq9hd4k9KK2cQG/3ezqoULBwlzkeGORPV/4ninzBYq0htuOAQMZuqYGg6G
	v5k1uPHguwx1abVD0HxekBiQXDHlntTzXSIGQL0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018017686110-4f8834bd-e0ac-4e57-8e13-5f8cd37612ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd16eb32a490639c88b7bb67b2366cebe28c06732bb9516ae1c27606ed8f6ef4
Date: Mon, 11 Apr 2022 06:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649660158
