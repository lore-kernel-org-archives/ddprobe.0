Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568414C94
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645221685;
	h=To:Subject:From:Message-Id:Date;
	bh=S9WAPBJx/54eVcMhSdN5Dk1GgNrwcSr6Tih/d+FQ+RU=;
	b=hzVpL6vq2rjZNzsPPHnWkS++SrlhpRJaV5ZHCr2JIIRue9NT/BoW6HPEeB0Dvs3l
	jSOljwVDt2nmJW1M6ntrUYeEXTm7fq5Ey7EJ73kiPtzfK9KoYbzVgxjs7jzbI9XygVY
	g0rFzokvXzP5p98m/LMSdVu+tKUYn+5sAiEIomeE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645221685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S9WAPBJx/54eVcMhSdN5Dk1GgNrwcSr6Tih/d+FQ+RU=;
	b=FnFATZ/LgnxlBBxEtzwLMppqGJbIa3QuDOTSPTJtBRbM8G/h0bkxGP2IMIUquot5
	49TMne1LWTvCblTSmJcWZ86rQNCZmJ4eBCDH6Wa9zL7stAeuVzkVvoCkLn4+FyvjaIu
	Bh038QGWQBE6FFOBH3n7S42hP1YPWu/2IQ5oEuIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0edaa67e-a326ec46-2528-49b3-bb9b-a7ba235df1a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0274a2c0405fb7b4af206e945d822e3ed9a59610ece04ead6c8d5801123e9149
Date: Fri, 18 Feb 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645221684
