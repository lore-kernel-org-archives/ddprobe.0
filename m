Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF1D2566
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658946053;
	h=To:Subject:From:Message-Id:Date;
	bh=6H+7PDwPGDjqJzG4dJPN85clnOjgjmv8OUlZXF2TjoY=;
	b=YsnHwxfrCoZ8akw1sEgsVlZDurleDESbwQ3lx1BBASy+4mBXKzqjd+AGpaU2HqNR
	cn48OegFaSuWAXsNgJDc/KrY0xTcGITAOtxTlyb9hQ1ZUPSXzEBKOmsjKwKcVMz/2FJ
	mT0DcMaz/ByVvvGdfiRD/pszr4XXw6WvvTP/ewfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658946053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6H+7PDwPGDjqJzG4dJPN85clnOjgjmv8OUlZXF2TjoY=;
	b=GYBHFx7yfUkIw2IvWHiASGrroz8pf2b/Vi/zaX50DBcASPyJzOUnAQ/ztd7NujbH
	J7Gk59Q/atFWAidPvMZ8OTGQI15mGU4EIkFeCpkGCwVMLrdxvoYalEsBsRLWvS+y1g6
	S+mXcnDXhlQZCqwk2EKhHwGo2CNFGbM/6E5Kog2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240e3e1ee-dc02e48d-e072-4f80-9351-4f967d440a39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00eef52e5d7578319498cf09565a24370caa9052293b1be6f93c5301d944ab59
Date: Wed, 27 Jul 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658946052
