Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727FB7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646966184;
	h=To:Subject:From:Message-Id:Date;
	bh=h38bZj/enqEIdMIAafkSwIDAxUTY7aML4Yfb2CdxKoY=;
	b=UH8ghjEEEyMrqpQefGu2CNs4sTBcXpAXqxQ8jpZxCNPiSIV721/eTC6pP9f5YPqF
	ARIm4UGWsVpP7KhvTefa9r0t03QmZOZOYuQI9OpqyuR2ulp1C+vO5FDGAwyXtpd4Rcy
	rA2NyqmjmjjbyDXTpkLt+SMJ5MjCgEXqUHXiEekM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646966184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h38bZj/enqEIdMIAafkSwIDAxUTY7aML4Yfb2CdxKoY=;
	b=lNIA8aMaQK2gM7O5agTZmQbqYtq5ExIa6sZnvti0mGrCvXRmAgkBfjWASVHGsixg
	Kfa47yvA4GZ4qaaGpwvYhk1SnVu19OR1Zb3UtrBBKINJ3RchJcWQwjuLLR7BqtkoJRb
	yR4xlHgjS3OpM2TTRh3anOHFsUXKb9PtcCgQVOL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76d59b21-b372e24e-c41b-4f65-8440-89cc53671fa3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c80899dc8dcd626fa82068322548aba37a4bca80b5a58820c89453de042f68c0
Date: Fri, 11 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646966184
