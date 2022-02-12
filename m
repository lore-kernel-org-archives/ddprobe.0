Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A76A7C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 02:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644633031;
	h=To:Subject:From:Message-Id:Date;
	bh=WhcWHkj+bvQhEZxEpOLZV2CEEWNKbcnO982dzB44BLM=;
	b=Q4FFkUTxTB0xWGneXCrjB65C/ylqqae7w7k9Y+4ymW8iPo/Du8qGS2wJgWF2vTVg
	/HQ5VLKPELAgKwxiTHn9Sm2fIumt20XyGoqMr/tA1yyiJxZdmjn+ymqvbYg4m6mntxk
	I1RVlwglWxZmaXmg/2DHyUdGIaxbkQP/b7jL8YyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644633031;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WhcWHkj+bvQhEZxEpOLZV2CEEWNKbcnO982dzB44BLM=;
	b=J9rOngFkNQuxGmXqFB6mCPciGer98weHGQC91c98ObTlnuUtjgueZYgC5tgIiV3u
	x4+GUcAFdTjSQFwnIZgwKx2YLaF+mfyuOiM3njKCBpp03S6S+a4Kd/+4KGpQ2POB120
	cRh/TUj1YkEMQOo6pPhOmdiyf2p7Cs7WyvwM4lYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eebc48127-63b3a4a3-bea7-4b44-baca-d2b1e68d2033-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f7429233a4e51256bb4efdda267b01c1dad8bb867f46fad3357b6e4b1c1f02a
Date: Sat, 12 Feb 2022 02:30:31 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644633030
