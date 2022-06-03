Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234481386
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 19:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654286099;
	h=To:Subject:From:Message-Id:Date;
	bh=l9O1rRVc/GqBPH8MS+lZeAVe7CG4J3nq23Iqfcf8rUQ=;
	b=VbmnDaUBwpMHTXdFawqw/yutO6zrXvgWrD/BSyQmRhlnViuPP94ZOBYgS6/YtfGj
	PIO59N/kZZRr4VG0o5dDVwU+pLsflDWweSLOSB+7L7UDaMRHAYNcwETc0p95FIJt7gV
	JuBVy4+CoZPUZ3gDA54x92QUYMSZPnA7rKk9HAuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654286099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l9O1rRVc/GqBPH8MS+lZeAVe7CG4J3nq23Iqfcf8rUQ=;
	b=SYn5zUG2Sdi6dpWsmyuLRz9RH2UpqC6gxTeSl2BckeOSC1iBBHMLLD6dQ7P2FDET
	LHLiH5p9oR2E3CHSGhe7b+zwpzICD4ghDGs1diIHNtfpH52hpXl+N9nTOzBZIPXNTg1
	Sh2xtOTD/Ic5ujdvP5vpzH6SZJWAd4GlScofbA1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b22a380-222fa823-9f58-4d85-9800-c0bb7728ec2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 391c16be8632551d9474c2a6f9a2c895bc893b5c1ea573218af8669cc35b2a6f
Date: Fri, 3 Jun 2022 19:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654286099
