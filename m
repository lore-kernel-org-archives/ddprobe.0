Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABDA23A6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 23:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649805718;
	h=To:Subject:From:Message-Id:Date;
	bh=KdnjN4tWEvSsSCtHUMDvdRYArDsGiICOqn/NoEvHdHA=;
	b=f7yh0jiSKJwouCGZKKbjO7luc4rLgrZ21u7S1dqQP+z1qKue++9LIanKwRuXhInX
	YE7mNRJ1zXmQmjZyUrduwbpOYh99hW5WJ++ZpeUNvRx0hCIpmPwZS4My6o/4U88BWJx
	meuHBlfUvtCjjfikGfj9tvfYsjuPAmPOCUhl7s+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649805718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KdnjN4tWEvSsSCtHUMDvdRYArDsGiICOqn/NoEvHdHA=;
	b=HEXHLv566KTd+oGBeIDWe3HyGbV7O1UqP8JCvNFnLLlSncY5Pgj9nt2NuNILO+L6
	SDLHKau005NtDKiiECPeq75ngyUvzwTTccNTmlV9vav0f/Q1xiYiTH+Lk8USu5FFv9u
	/ufESUdZ304YyRpa0c0Yx/vcaGkSau6HyDtYrtmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180201572ef-14938796-9a8a-4083-897b-051c171683b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11cf0bbd8a40cfcbb9796780c98943e39f57f3503d061f2a62343f73e1cc928a
Date: Tue, 12 Apr 2022 23:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649805718
