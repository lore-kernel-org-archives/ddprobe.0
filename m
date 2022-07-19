Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F4210E9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658197012;
	h=To:Subject:From:Message-Id:Date;
	bh=wau/ij79N/zUvqjiyYG4TssXr7d/waQCljEUi0qB9no=;
	b=KQ3YU3RzZglHXSplm/KB+DFXfthI8MavQZytvbzy2Fh5lmRNjbY3pWEiyNXEUDRq
	WBt6j6mm8MNU2vOukVuJnVoaiwIK3hwcD7atJIHwhGpNabqeRfijw6zoBaIMUMxsmoN
	CCP6+YuaCInPH8P7s/uLDETVAHyCXQ2BKI4xI7lU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658197012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wau/ij79N/zUvqjiyYG4TssXr7d/waQCljEUi0qB9no=;
	b=Fx9uMRVZehAj7NW22FNwra+f8k7yC07MeRp6qj+HtvyYHNXM6wIOmH3GrQ2oeqqT
	ndJw8XiJ4pHXKXIwvx/cyx0puNWyYf7dnAbZpTablmcQLyFQOI+B3yQrZZSYrqOmu9T
	2fggCly5MDf9V3/bZ07SHsVPEx7fKC/HbIOmK5tE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182143e6f15-46455689-e310-4947-8857-b323febc5f53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71ad3a9294bd2c907e922d0396b01426e6d825404105e5e72c281dbdf542355b
Date: Tue, 19 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658197012
