Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6276AB9
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 00:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648080178;
	h=To:Subject:From:Message-Id:Date;
	bh=W9TU6HkkC0UvHqpdmReEzArRpNdlw6BL2zZk6MpFpGI=;
	b=ZPdsIcxNmGhjnZe0IGjF2fW44XkXT78C4N6gIXf6O71RWqf9glN+pbfDlVbJE+OU
	in31+BgWyd+n5HneJrsqESiK7soEGHioGnGj7ghPsz3PhVNFZMHF2kPpsvFqOYZWF1d
	fEt1dNmSyMvRPtlcfcrazjLj3vzkm/I8WWN5psXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648080178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W9TU6HkkC0UvHqpdmReEzArRpNdlw6BL2zZk6MpFpGI=;
	b=BkW/y0bsbWKV8Y68+E+zrmmR9mFgToeiLd3ilNnRG+klaJddEdhdBQk4MfMo6kz6
	kbFMpVXyolRr01tYXosvFnm7wCSQ/w04fCOhMPQNuKO0GAJC8MSO4mV9dl2NTM/N+iP
	sqv0wrxp83/tVZ4Pt4sijzXogihPgmZXI9XFNQGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb93bcc6d-31a09e84-27ae-4c10-8b64-8bfff29fa96b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68deade2bb74aea178d22c7c7c1a395b7443cd71fa313a85f57efd18380de4b9
Date: Thu, 24 Mar 2022 00:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648080178
