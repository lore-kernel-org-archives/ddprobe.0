Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD5A1365
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644912684;
	h=To:Subject:From:Message-Id:Date;
	bh=Wp/sGalZfyBzCPp8qPwyFz8gHjakPiyiLehDq4tCOdE=;
	b=HiysX97fynoaku0JbLEFnartS1RxsRWC/OByE7AVIfRka5kNdoSHyqBIG+qKgnHU
	2jAhLzRGZ4nDo0zwCVgP+794Tc/y+l+rg4Ed56eT5k/QIQNeZF2zAmCFcNylzmspY49
	2CeE3nny7soNf+2An8+EKVa2nc/H8fv7ZVuunj+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644912684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wp/sGalZfyBzCPp8qPwyFz8gHjakPiyiLehDq4tCOdE=;
	b=Qy/oStcWOkxwENWtYMGgvORAq7muPSmU8PipMaHBhaAUGEKRUKqaRV99HyiMStb6
	KXQar7579nbWObpeZPfHPnimuj37TQI2hcg3SMw3qtiZGsz9D4utXJz+1fuPlL+dfG8
	7YLxZy/r2fRa7VmOwO7SeemoDOuBVTugf56JXGHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc6faedf-d606547e-83b3-48a3-b6f8-f58a6f1a718d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03e4e1ef5df007fef3e87dbfb87913f69e29049039d3302e6a9138d78f88a504
Date: Tue, 15 Feb 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644912684
