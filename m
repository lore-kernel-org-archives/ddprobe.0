Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC96C17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647694585;
	h=To:Subject:From:Message-Id:Date;
	bh=FoqwiwwTzgs5IiETK9ncGezmnBAn5+P0FfGhpg0/fGI=;
	b=Ac0cc45wj2PNmhVMOxs3JmpC9EwxcDoCthLRpecn07Gf5OS66ecjepHOnpLg7vYD
	EsKdhNGp1UOqCgdeHq6+vo2g+3iVMWbXCDHqvmXaYuarGnYLqEmq8lK3vIivj/TiTzd
	mrYONANsu4ZwJcASh2JMP1hj+CkH2UT+c0tETZIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647694585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FoqwiwwTzgs5IiETK9ncGezmnBAn5+P0FfGhpg0/fGI=;
	b=W4DM7VH2pdgEvUj1ft3M7Ew/uSgxXUCrRremndbIYrhh9ZAoEMfHS6Hf7SN5LqrT
	EUGmGpIRnLBWygzAI+C1j3CNnMKdJrIPoHodN+TVEKOjBg/JU3Fixfh1ceZBqYBwNio
	S7kE5qCVw4EbeXnTPL0GdyyGDe2zCRveld99saZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2401bb0-9167568b-0167-4f79-ab86-e535ff719aa2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d048fef75ddbf0a86cc5847e4614d5c1c042af0fe7521c6503295f65c040e941
Date: Sat, 19 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647694584
