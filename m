Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A71823D9
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645811785;
	h=To:Subject:From:Message-Id:Date;
	bh=HsZPZ3a8mUvSN7A+FO3uXIoKDUyyZdWWCzpYYrO5cVk=;
	b=adVUQebAdl+3/Md0crIbGtyBecuCf/tqxsFP5jHUP/45sxGJXIKDzNslQ00WoESZ
	qzm31Rij0RW+L5ixhbp5aV5dElf+euSxT9UyNBKru14A+XblastkzQZ7aaMB1KVw+uB
	9i2j5VrR/j84rYEA+dajY3u1YbyVY6hhXW67s7Jw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645811785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HsZPZ3a8mUvSN7A+FO3uXIoKDUyyZdWWCzpYYrO5cVk=;
	b=Xt0qDsmbktPJqNxDiXmdTmaPK90qJRuh2qu1Ui1E8VewJy6vs8Qy/4ltVblLWjVu
	X/hsMk3uovYC2FRJeXXCAsFyquH1zOTEDGyw0DUU+5yYCLgOX78PRdC+jlypt3CgT+9
	PZP7pkLfKpzoXvVgB+y7AsFYoRhXKhD6Kb/VUK04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3206dc15-1eac3344-93ca-4b53-9e51-6c82282f11ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aa849e271cecd522073e31541c5b318ba40ae9142ca951891138ceabcc3c81b
Date: Fri, 25 Feb 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645811784
