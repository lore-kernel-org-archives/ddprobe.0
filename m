Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B178748DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645189585;
	h=To:Subject:From:Message-Id:Date;
	bh=d8A9dIGYPU2J7fWtSW/3T0u+lLvaFUy3SkvVnZrxjEI=;
	b=f5M0vhbD0nrqZpwHl6rpzMLlagUiEPVudN+hsFdBvtYmRI/hXSJh1JOsDxlNH546
	PK/FdKTUc9VJnPfKhbxGjEJpI/UbnU6zQx5UWCeBTmg/crwpCrkO3m+JxBGl2Refcap
	H+NSge2N2srJMlB/O9L9L3JTvhEqB36XKZn6aVZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645189585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d8A9dIGYPU2J7fWtSW/3T0u+lLvaFUy3SkvVnZrxjEI=;
	b=iRIsQO0inFejNQFuje4XS8SqvYVRV2kZ87z6bBAEdGA2Xr7KLwsRqghY1RSYUYLL
	/YJxVIh+mF/kyFGt7OBEN5Wv0Abpp1N/u3XrzndHRxDU/oHmMGkGR8qzIrGyr4hPETA
	/46/Y0miFtfSK0UNGMqQwZDYOz4p+Gek5uji92xE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cf0d815-24ade58a-2809-4045-bc04-e3338626e591-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5c680e16d4fd355e0b51bc5912531ce2e1a9daf6b07ca43ba00a27148f3fab3
Date: Fri, 18 Feb 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645189584
