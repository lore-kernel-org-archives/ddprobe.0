Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084D76AA3
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657653412;
	h=To:Subject:From:Message-Id:Date;
	bh=XraMonjhMv+IuYqE4UZM4QpWptWWWIItasiHshesUHE=;
	b=XnLULKQyUXB2B0tXAEkAi1IlWASQIjPJ7HG/h2c2Naohl5S/fSGUcOUgZDaT3B0Q
	HwwLRGIddzRHeq1CoOYYw1xAsdIm7/9qXKiAr1PSPH9qBzlD6CwyNpcw8HAg0jjl++D
	okTvOd3j+SrUx/67DvJ31h995A9PLQpl1WWAehLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657653412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XraMonjhMv+IuYqE4UZM4QpWptWWWIItasiHshesUHE=;
	b=UwvxPaSQNTEGolqeNDOvxKy1LR1uLW+QoYgAXR4hMIp38jp3dosYAqqHoea/lJ5v
	JHiLTwn6gZ98Ogk6STq80TdjczmkHszYkQxXDpH0ybEmt14LzceqSWAO6wK6v9Fl3SJ
	u3eQbr9JdWp40PBpqyDzfOrRvom7MYzKmCQIGHEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3d7c1f2-73407fb3-889a-4896-bcbf-0571ac8b0a46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fec2e17d2620b9de64d185521fd78145f46b99cb6ca5eb032e882058da8e6d3c
Date: Tue, 12 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657653412
