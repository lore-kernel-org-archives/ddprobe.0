Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A755395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647733284;
	h=To:Subject:From:Message-Id:Date;
	bh=fBlyEYs2LqiRplayJ/NsyXX/rJ0dwKyAK0wnqg8ZCl4=;
	b=TgURZjB0w8pvBOpU6/LB7DrNEap4m3KfCyrfxC8bi9cXbFtG/fIDmlcTKg0JwNpF
	TsLcDzYMUtZ9zzAhytk25S7aWa8cIxRQgTDbu1CeCpUZbmI/eSsbwGGKu+oe9BS1DvE
	UJIf/SYiyIYZMk+V3W2qum3wIYAPn9eXcFxLtaPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647733284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fBlyEYs2LqiRplayJ/NsyXX/rJ0dwKyAK0wnqg8ZCl4=;
	b=duBLedCs4lf6z0YK6j+hfwO9oSEoi4Jzen7185YBe3mpm1YmvRBiESy+/0B6xJJs
	pYFALwYdfOpo6w//RWm1kX5hqCTbZbU+WxXORFs9SMfkNjg5bdwmUaLGw9lS0P9tuQZ
	R7CA/NZWc8jQWRSsN/IlfOBLLclMIH5IQoZyzy+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa48e9fb5-73f3ff7f-10c5-4c79-9261-46b156481827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35e4a6b91ad4eae24ad5753c04b92f0403d81763376d4b608461c22304644238
Date: Sat, 19 Mar 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647733284
