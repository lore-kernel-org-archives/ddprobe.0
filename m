Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 851F628E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645267885;
	h=To:Subject:From:Message-Id:Date;
	bh=T6lpkcDaT/2jzk+eHena5SFyaMrJ9eiAwZfc4n57qcQ=;
	b=mzTwLjqVP6Q6YNMIiEhUjzFNpK0FgzS3laOSRaq/YzY9fhFYE4gZCcEYXqt6LDQu
	FU7PPI4xi/2HOm6GHcTqx9MLVOwAXZkPf6BYP+PqqVqte3qzLSRiOWTfLNzLqdqSVT8
	1qDFxTYaiWLeB3F+lyzKgvp0Um8Bhi2kR29Kcq2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645267885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T6lpkcDaT/2jzk+eHena5SFyaMrJ9eiAwZfc4n57qcQ=;
	b=Mn2StmxtdTjt712VAicNZtXJmH1BM7A8e3NTensnjrFq7XO3N5KK2UUgvvgYJKFx
	LINMOvKpnmHoAplcdvle8IapPQy4Ww2NMEWi3uuQI3socF97DKJH8Y2Nz0TeD1a7cJS
	tsyzVZqN0vnFqOL/8p9y3qlluMXqP9LyWbZ7w83c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f119b9ad6-20cb654e-fc7f-4c08-83f6-efa70eb71ca9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 362ed642452c609470d0aaa08cb94da32afbf3682963ed5a90aab1964e10674b
Date: Sat, 19 Feb 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645267884
