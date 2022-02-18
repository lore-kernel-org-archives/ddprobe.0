Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DDC2F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645147884;
	h=To:Subject:From:Message-Id:Date;
	bh=fBK6MAabEWIP8t3llZUhyWGaqnv2j7XuUNhexS7Xss8=;
	b=N3v+gRgiP44vnW3elmZPStp8T66Hm5xfGtJbMohViojeiWA7Keo4sDXevLr+7fiE
	yC3/K6xiuAKr7FgWJaFMe+BLxO47mJ1uL6AIeVGPIa9geHcMlMIfadzOB413r1p4Vmj
	OX2T7qRpO0eJCuaj7wV1QBhJXUzjs+co55JXbV/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645147884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fBK6MAabEWIP8t3llZUhyWGaqnv2j7XuUNhexS7Xss8=;
	b=aTOKZXCzyWMwnk0XlNuG1kxpzk2RXjOvJZMRelp4UQSpr6ayINigeAV8Y5Ro+OeD
	5Eth/Dcf4/NPh6bwnID4ZqsrFa6aAU/YbAXvAzR0A8IT0TsRZxqkZGbFxwU0z52PHbT
	bn51rpucAFWy0RSpH7bJJnVnkF4k6Old7TlbQem0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a748ccd-3721175e-8d48-4347-ab58-7707b74d8f8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22dce433f28c15274d05450bc134310d5c377383ff006ed9bff427b144229529
Date: Fri, 18 Feb 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645147884
