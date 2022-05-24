Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306ED7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 11:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653393479;
	h=To:Subject:From:Message-Id:Date;
	bh=MW0R9l+oTeAjVOX+WOof5uw1STLPi7QKx84YnP7pDBs=;
	b=fcJvQskxoR3GGn+k9O+Hq8R7VG9RnR+lPkzXKldTm7rRYZST/bIU15pHKiBOaMNc
	OgSKOQR9cyY06xfdsvjvD+whPkfkr1rr8FEF/v3pBYke/uLZa8unR5s5ULDZWn4Y+mq
	dju4Osl19yJ6p3ou9bWBDaLepjDbVPJvzbMDF4q8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653393479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MW0R9l+oTeAjVOX+WOof5uw1STLPi7QKx84YnP7pDBs=;
	b=glhA5yFuld5wB1XfzNZHboWVUZLyke++I1bqvq9SHLoHhDIWAbpJOhm3bRcJq5VH
	CXQ/mn62pzWAU2xbzlzuz2oFig4q/a0B2djfaChr6cjVJDhUkc3azftEnOgWfF0w5rZ
	fYLCE5X+7YlmQ9ZQjSxXwdNG0v4BI5iueBrCLg0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5ee5673-ccbd8804-ef7f-4f0a-bc6e-0b3fa18f38fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 607c4d94f4494246573e63919e8b6430565dae1380fa591a8f5c26f3f831f780
Date: Tue, 24 May 2022 11:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653393479
