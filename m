Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774EC53A4
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646046084;
	h=To:Subject:From:Message-Id:Date;
	bh=6A9OgpkWKfNgGaWgXf8+Wt6PnJOZqCH+GQTsR3HYUK8=;
	b=g+qxOS4gLz6Rtt+iyPtpo17BdmnLliDxwd7qoHTJngioWXuEPary5JQuu/w9h6EA
	C7fcAFeWA4X3tWxjZiLZiK4jvjnHeJXtbLThwdi4hige05lZ2AYPm57Mz7yWFVIORSP
	AhbmKtUGBk1m7TPjrJL3j1lygkEqSzcHvmmO9LFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646046084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6A9OgpkWKfNgGaWgXf8+Wt6PnJOZqCH+GQTsR3HYUK8=;
	b=S2UHOEelh9/WvjnFelr7WMYGC1ONkgO2jyPjVyFWPqfC76PQWkPGqnScEPaydQ+u
	hRCnYExh31QFMZ0CoHGXOSX1VNg8TfruE8o/gCMUuMP2d9s7NnVMqBBiaOMHXoXbRVK
	b4Qu76SmI2XXIXfXMnnGeHniXrMsNWCw0pezpXDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ffdfe7d-c1f651e6-8ceb-4a5d-9743-4198c24bfe5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2994989854adb249257c4969617ff3a4f999a72985000f7acc13c25b1f1db9f7
Date: Mon, 28 Feb 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646046084
