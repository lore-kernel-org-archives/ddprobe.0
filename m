Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8803A7A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645989984;
	h=To:Subject:From:Message-Id:Date;
	bh=CaTE5Ri8kkiP3JJQAHqUhPiBB6g+sHVb9vBNIWnOmKI=;
	b=VZveCoDnaBwt0lRzPMxdub0o15pl9cz4++hCP1WbPIRSig50yxXviCa5akVNe1wm
	oqZgG1CIsj1GZH1nLPwmFv4WiCf5wvG8DPuLfJ1UJlzAjwCJXm4+ZXfsPgCHjoHawQZ
	VQCEqEJ490Si3E/eIoK5kisK9HSy49BAB92IwQlI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645989984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CaTE5Ri8kkiP3JJQAHqUhPiBB6g+sHVb9vBNIWnOmKI=;
	b=Zyc29l0v/BZ2q6t+4oMOexGRvbtXSuXIFPlX8ZsBw+In2k6AxyZFuUZ3TJooXW0X
	m90RxBxdpnf+T7lwL6MeO8fFVUOc2Wg+QZkTpUllzG7+K2kz+yAYXJa8ExSU5AHlRS6
	i34gOYzKnaiwQAhfhCvDJmou48vXbwkg0WrPxJKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ca5f9ef-9156e2c9-69cf-4d19-9c3e-1ef4619bab71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e88ff3c7c2c0c344af961a78a9c4afb217f04df2154966bea3e8879ad50bb392
Date: Sun, 27 Feb 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645989984
