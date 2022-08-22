Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5624864D
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661145652;
	h=To:Subject:From:Message-Id:Date;
	bh=kBWt2y4jS5OjpBIfSvFiG8JTJyBTOM/3b4ai6/AKzIQ=;
	b=C804G/zEAcdlzR8IHe0Y2k/KQpxlbbeNpPcMHQjhWEVG8dqOzRPv9V69VqxXoxXR
	blArQFiLr2kuxG5niPKHqUX43W3XdqxO6Sa1Rq6pQqDsUGenmBh1Y/c4LYDT5Fm3dBC
	Ptk2obIoB9JvbyhVnsJ0WsXRlV+mfjs85USzh200=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661145652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kBWt2y4jS5OjpBIfSvFiG8JTJyBTOM/3b4ai6/AKzIQ=;
	b=MwU7K9Wo5FrzWhDkT53VObOPjQl3QWpVNhqtpOJc9XyLAdn7foJ9U5+ky4EULcd7
	yFL7bmczDL3AW/+ax5kXLXuG1r3r0yoGnNP9mu+knyaYef+1Ww/zNYUIOo+c1PTHVXr
	HaMfRZsyOj5i8bBpN1HDq16mAZ+TLu9ysoFjw7eA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c3ff1d33-15ad97f4-8836-420d-ac4b-e78554d2998c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dad0c02306238c419d5187cb1387955cb9578ec072946260304a64ce2fd536a1
Date: Mon, 22 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661145652
