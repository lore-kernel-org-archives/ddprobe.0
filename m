Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163A91397
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 16:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655828279;
	h=To:Subject:From:Message-Id:Date;
	bh=oWClyvAiSvMhyL2pN7VtmxpCjtdGMWrwWOMD57Q2wEI=;
	b=R7nMyWp23GaBZTW/wcpEek72T54ln/98YbGqX/YWsCuOlt8hCAjRV6I/fINi2rYP
	ahhLk9mXVWJxVl8sQIpOWGJYqmZ5OAXtANEZJdMcMrMVGiGqgl5ho9ARq6NooQ2Fobg
	Q8LXNiXk4MuSrVuyCNHsiHV7GXRaxoMq5jWYW9kI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655828279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oWClyvAiSvMhyL2pN7VtmxpCjtdGMWrwWOMD57Q2wEI=;
	b=ZaWU7ltXKuVGpVhR1bvPRpFy0xQ3S/xktJRQagrAYEMZnLyxM+kkmcPz2Xs8A7J7
	eZ+F4+NcN7C2WDPWEQWtVEp6Ut5CAkOVx9hwv8ChCAQfg2tXiekv7M71CKtlBuwtMSb
	E5+DnqYAmrXklDKUumHQrHTYN3lies2n+B9qKahw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181870e6fe5-0bdf25e2-a34e-4b63-af12-e0d2806ae0d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e9994cafa03f9be93e1152c1ae59cc7bed3ca78a1f2839ba1e1df33a30bdb89
Date: Tue, 21 Jun 2022 16:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655828279
