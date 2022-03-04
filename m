Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855417C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646364984;
	h=To:Subject:From:Message-Id:Date;
	bh=np8ToXiUGnYNwjrRc+RayZIWifzUiHq9YNccbznq+TA=;
	b=YDj66CjoJ6JGPeh9xKRfElaxqyG9whG0H+3udZsAfEueJ16E/h6gYwhzfA5rBhp/
	Wei7dJbXgbSYrdqQVXfWJ5+SY8vgOiSnZrtXiTVS4UwM45/mV/MVeqcbEPEH6MI6kEL
	FIHS0xqcDdTNN6hpf2DFlwfXrZ6o+JS+s7xx8/2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646364984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=np8ToXiUGnYNwjrRc+RayZIWifzUiHq9YNccbznq+TA=;
	b=RK4qXE6O45Ltx49SMSXjr+znk1UwIIM/eD2q+HeiAlz+D77hgZTeK/VUb9v1cekO
	Bs3mjKgfiW0ieKNYkZm6UhkxNoTM4ABi5T2scwatBaB8KcDNVxUVmOro4MmxtrhIula
	hWWaIt73kJ1bZRgKcz+2pXpvDv50tf5e7XnLtcA0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f530005a8-55f15edf-546f-4c5e-8711-460d9f3d14be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 989c932b26716b65881564be9ce33dfe87539c594268c76d06d7e7d36cc1a337
Date: Fri, 4 Mar 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646364984
