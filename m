Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254F220E8
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 04:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653193079;
	h=To:Subject:From:Message-Id:Date;
	bh=0Fke76taf7AdXXVgqOFT2iugXeRQmu7CRWCEYL3ALU8=;
	b=M3B2o2/h2roMMuMxdbdCP97lLZkvGlFlKqVdQJsMwxfHGMb0LiatKXRHd6M6fwh6
	KsX0B1xFvtHNhl+c3YlpTNPvm0oEN0JaCf2wATZM05pf8ZANRLnUUrYrCISrDCVh60U
	ljX2vr5hcK3hxjtpskaf8iVxmnKZDV2ehFhTnkm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653193079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Fke76taf7AdXXVgqOFT2iugXeRQmu7CRWCEYL3ALU8=;
	b=BIC0aVVsDU/zBsoOCXN9p0xdWTMKn9CS6xPzMSzNsfLyJfUmuDLZFoNG3K/hwkuH
	+Zwh5OiAduwPaGLUxWHZvr7pVb67wDVloe3HOFIK8Or1UT9VKNpZmcJDuOYOTqVmp5j
	5U8yUwXOV7TBvA38+wT6cnYirWplIfSiG3fSzXlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9fc7a00-a66dcfe9-ae81-4b6a-9d17-1612f0693ddb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb6e50f04a376d0a79bc71f114d3328d0d03b535d66d72090039f5f2b7e7e168
Date: Sun, 22 May 2022 04:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653193079
