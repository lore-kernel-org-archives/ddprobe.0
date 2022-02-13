Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB4B7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644720653;
	h=To:Subject:From:Message-Id:Date;
	bh=dDedIeHnYu62U071Zi3SnaRwSfAzzC5AfHeVvdmogQA=;
	b=iZaMOU8Z7YX4ATRAfR8V0zf3iftuav/xxxckj3KIU4Ql21AkhVltfomk5DY21gYg
	UzUbstAxIOkedU8yu8fG6fkOEvj3yrFFrdflZSzHrDdZhBn4HwTqLGUCVzHHdUpeJqB
	R7QM3y96NFco4i2uBXnV7UYPJxhqynUr6+nDMHfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644720653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dDedIeHnYu62U071Zi3SnaRwSfAzzC5AfHeVvdmogQA=;
	b=V9UjLVGnBQDliQDvgLsU5gJmrvT4MhI36f1vFSrvwyth6eMFbza2WcyqMa8DBYa2
	bNtvXT5cR85M4GrR3yFjmeXdQlRRO12x+TTYIQq0syyaKC3Lm6aoytc6VS6IrFBgj5s
	0/O/OhUMEmoATHyrTV8rgId+teroeb1bE18i+MS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef0fd8250-82095744-f94d-455d-8ae6-e4a1ee1ad64b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1eaafab764af060e485750129542aaa8a3e41c9af323d85c022c7a5695c0774
Date: Sun, 13 Feb 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644720652
