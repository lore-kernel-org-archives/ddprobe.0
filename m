Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C42E3674
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646651184;
	h=To:Subject:From:Message-Id:Date;
	bh=o7afrS+q+Vb9SaoN4I2YU61ojvSdFfA2tlBhv8hlXIw=;
	b=l60xWEKKjBrnVnZ6U12I3p1enkV08pHhtKycOtu6wl1oAHKoNHIooBwG7iafZRwn
	qykCTZZXPmuScjd4dptqSsGN1DmgekyR93CVqQC5ZJDJHCUD+Si8Y1LASfzRH84MtQB
	52xXZ2KJH1NQh9kiTXikQMWw7vQ4puE8cWWovsho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646651184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o7afrS+q+Vb9SaoN4I2YU61ojvSdFfA2tlBhv8hlXIw=;
	b=DPqxh/t6owFczsXaG64Wio7+f0u0Va7akFa9aEmg81MNroW2zuxNbn/cWUZ8pUy+
	MY0pQoR/F5ybPzpAj91q+FcvdK9vm/VVC/E5K/MmaGzc355XwPOgpVTHM7t/f8lQedS
	XKuku0t9+1POYnfBO1gbZfePOCyS30ImagTSZvv8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f640f1655-e768b104-d889-4164-9f38-ee37589d5cfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cc38f3c3f64dd1ed7e3b28f51f1856c89e1f5f1737cd7b670c09be34f55579e
Date: Mon, 7 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646651184
