Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D9828F3
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645017385;
	h=To:Subject:From:Message-Id:Date;
	bh=aOJ+nrxRe3BA5TJu3frFaA33A2GLFD3wh2RZkFRw+JI=;
	b=ewf0ll139uLo3aEFzyfou41abh8FX8E5qvWulXA0R5Lq137SkhWnnv+GROXj8tji
	o+1FBNPZKHY6wYqR3nP95AoGRrPD7UOhAij2j4iWr9XmZUc+ckHTVciXDkBQ0Nzei7w
	VP4clyaTK5T9u6NWWDMOjdZoJoLBuAFu2wOrAAFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645017385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aOJ+nrxRe3BA5TJu3frFaA33A2GLFD3wh2RZkFRw+JI=;
	b=Urc2K6MQjenKvDlIqd9e31DhwSgR6ZmAKKULLG4C7LEG6KRmyGRKzM/SZqeiYwLw
	H/822WLTFqWOULCXkeTTXaTW3sjaOKYVDCNEhXr60NM282QrkQsbVdlc+Rl6cp4fQDB
	9N/2z7qh3ZnrDImBvyWx4yYQU72IhIzMPDspPbT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02ad474b-32c0f4b9-c2f0-44ae-8017-1fa985f345c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1a5ccb0ec29d74ca9b67f499ec9011d6074a8247c3f8a8a7bcad189cc45bfd0
Date: Wed, 16 Feb 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645017384
