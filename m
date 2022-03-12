Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD6A5EBA
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647043284;
	h=To:Subject:From:Message-Id:Date;
	bh=k4c096MPWzCTtKO0SwT6qUefZP3fAqevllg8h1+V6O4=;
	b=F+bDWTtWI87/J2kNdsePqchKPD/Bh7bhJ4CjZUZMBw42W1bBtC8Bmhz0qYa0+a+/
	UdUvQGxJcDmVL82+mumPSmy6d26pXPq564YPHCsx/sMQSVTr0Eu1+M5ljw1mtKUNkce
	F/3X7VW2YsoIdLYAL3eHtEwnCsIReFCp4FYbi73c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647043284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k4c096MPWzCTtKO0SwT6qUefZP3fAqevllg8h1+V6O4=;
	b=hs5Z4hHjT+WTGb9jNwE2Aiaxyu7v0bvAOyIm1RgMkADXwSt2Ipr4LUf+bOlqUwPL
	CI1bapf9S9dOb9aIEJHmQesPUUKXYWZ+ee/yMWoyuTYXREmFKiOMX82L6r0vrsbyKZr
	7jTk60s9iPmRjZeHxp05togNCdIzI1EApg76bdbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b6e0efd-7b12ab5f-b48e-483e-af78-2f6fd901c16a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea72494e960578696429b6a697b0a0dc0afc2b7b469a6bfa76fafa859d645b05
Date: Sat, 12 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647043284
