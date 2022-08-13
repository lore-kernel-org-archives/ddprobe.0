Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616CC803
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660415452;
	h=To:Subject:From:Message-Id:Date;
	bh=HxzLq0sDmSGgIbnQeVmx1wFrZcr1zS5Eyi3rzB8fZDQ=;
	b=Nd0yMhl8av6+N/dCAvs3yXTK/8Fn+c5TMRlxnCwl4xYPYnFZ2865EeK+kg2TwayV
	T7ivjahEciQi9c8PUY4HSlcKi07vIXAEF93a7QaQBOeF4jEeQfFRc+bfYbaYf2Msgwa
	2HYblZ05Eo2YjTllNQLzZG+zjSUTQMclL7fK8S88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660415452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HxzLq0sDmSGgIbnQeVmx1wFrZcr1zS5Eyi3rzB8fZDQ=;
	b=iMC4o8tFvKYcWEXIMeGzMG7tzA4Cx9jUnpTmbBqyxL2pqE11d/VPBVdVQzxP1P4n
	y2MxsWtQL2jwpD51gSi/rdou1wEOxAgumMx81vlhfJIcPHJDxvMDQVSqAB4c+89Mjbp
	7iPWmMdneZX2ZTwbph2yJ5QUYQc9JW1VRGR3XT8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298792597-436fa4d5-bef8-440c-8e48-7ccd1728800b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c45769d9efbc08aa0e8a143af1316b318c374c25a1d41c04feceb9e78fef9dc5
Date: Sat, 13 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660415452
