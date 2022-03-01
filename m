Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995A257CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646119585;
	h=To:Subject:From:Message-Id:Date;
	bh=BKq9c8OVjcOsjN0D821q4JH/w4m1Vam+sYKVR+OcpXM=;
	b=VtEWqAURT0Bb4iJdMqFPH2xgXSef4DsaJf65vmXg3uPBO4ShsIdgk+xHnSa7aqOg
	1csAC+izFtbwK80AM0GkEdbubsdolBSLDfiLjyXQV/vLS6NxGzkaK4tRepV9oNJokcx
	uGMHtMeVCFz/HRGAlNCFhXhRvFiJuyg0xR0M2E4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646119585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BKq9c8OVjcOsjN0D821q4JH/w4m1Vam+sYKVR+OcpXM=;
	b=Yk5w/QXMtUQbWoLh2YY9dmCIJa0x1UbCN9G7AqiEMmg8bQUZXqAwyO17jfrG6OAr
	svZin7CZRGziIURdXFs6UkRboDP5ScQM6em5xWweGiaIa0+9DuqySsvvAaXbGvInaVH
	X/2Fp6gitCFJK4OC3MF95b/vTwkJq7rVwvea8g9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f445f8408-ac18ca9e-4fa1-4a78-8a1d-0ff6b564d12b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 332e479d56fd83234496cd2bcd29f55224e169b57fd86b8fddc6a427da47af8c
Date: Tue, 1 Mar 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646119584
