Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ACC3D82
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 21:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649798818;
	h=To:Subject:From:Message-Id:Date;
	bh=U85069JnuF0zHA2TO3U7xXKX3vRNIRIVvIXN8nVGZmI=;
	b=kEHprB7mhq9abaYsyO7eGHZzIEUV8XWLoAXv6uSOSKNGB7yoY+BRZQMlK5ltJfJp
	KCm6t3YSwNeXZACBkZ+G09zI5dioSj8tZzDzGPdHgsI6rGzPLmnL04UNtSkXxfRbGZy
	qVCuqWdgcmuQjaRWV5JXeqXMC+WOGKRntIntXyX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649798818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U85069JnuF0zHA2TO3U7xXKX3vRNIRIVvIXN8nVGZmI=;
	b=c0ArzFFc6XcCz5zObfmM1aYUKQSZf04TT3vFvEMCQBUptQ+sVeGVYirt5kv5j3sj
	eZTxZ097paiozkh1Xa2I31reRMrZSsAf+aCkkSPnjp1t8ljmLOLIK2RiTekxUUVV1cX
	bsaZCeCDHrTNqCETuTnV6fve0GFa5srX4Qxx4cF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801fac2a2d-877beea6-df07-4b70-ad6a-18c5fe6cbb19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bcabb91aa3928d3e3a53f6a001b84b53bc96c2593f1e3ffb795338134388ab9
Date: Tue, 12 Apr 2022 21:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649798818
