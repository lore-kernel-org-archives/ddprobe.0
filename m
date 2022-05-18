Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36907A
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 14:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652883299;
	h=To:Subject:From:Message-Id:Date;
	bh=RYzE+ZVtSIcYiDoqHF0PmvVSPtl5cd7WN0AaJ+fJmZE=;
	b=RPUHc+OdYJyd2K876XP11UF8B1oVUAA7UHZQiKOWtwhbxJVJGaAvg/ep3pIl+bpJ
	b/6iLK385EctR7kzURwdH0PXdeWLPGtHdTVDVacsY1/ifF5GIZ9AlDrd4RxUIy0a+4c
	JizQe71WRF/vrZGDcPjKvMaJSPhA4hvFW2I+vTEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652883299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RYzE+ZVtSIcYiDoqHF0PmvVSPtl5cd7WN0AaJ+fJmZE=;
	b=NxnLD/WetvoeLYY2GOsTBnDPEHozJ+2zYJotP74Dp/YxJ8Kr7khzn8Xi1Faqs60o
	QDmysWPZHwX+vjaMqQvajg1pSKvS6ondJekO58J/0e6MFfHg5BSj0ODiN3bPua10tcz
	EX79NxFiXwqiQZmbH8wprrQevlVL9c6jQjpMNnOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7859ba5-cd4e4bbf-0952-4bab-bc4b-ad2daf68ec5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fc623ba91861694125bf286183110f46da2cd1a29d05465614cf80b40021833
Date: Wed, 18 May 2022 14:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652883299
