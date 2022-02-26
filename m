Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6EB7B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645906584;
	h=To:Subject:From:Message-Id:Date;
	bh=4D28NAIZMaEygZweIxcIB7kQIWOwya6vD9GrwIzJGgU=;
	b=IyjPEZnckFhiloFCxCR+yUrTR8/20QTUt4qqAn3Fsj8PH1sJ3F2aUsImmLLLSZov
	mXJfQ/N9qEGqUXx4prJmQOk7znrhk8iWjc4rEtfL0OLvCiEUfEOTamwqzhY49y0RLY9
	Uo2NNgTGeYWgGuZUZ9nljWQ6VXqAAq77LHB2BWgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645906584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4D28NAIZMaEygZweIxcIB7kQIWOwya6vD9GrwIzJGgU=;
	b=Q0sjly9YwqtHLB0oPd5TjBCvXOxmK9CnvzIl4j2fZfKAvkR3L+t7l+3VnOBoqEim
	n8Ni19XgmTX9We3Mwazam2OTUWhS2XE4o9MeYWmeSCeQxTTKb0IxtKAj5U8AK/pvtyF
	YC8Z5fzWQG2gnDxCy2ONm4ha1qg6KvBEXVFX9cS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37ad64b7-6a29d70c-10be-4464-be40-3958a2f11078-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32df51ecc9e0528c3e005d3026fd7ffaa63ee33f7f0a21170ced3b08d36e49ae
Date: Sat, 26 Feb 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645906584
