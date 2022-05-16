Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F7DEC5
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 12:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652702639;
	h=To:Subject:From:Message-Id:Date;
	bh=pCUT1plk6UIhU+/aQyr2vQp+LCEvIqg+c7r7fba1HA4=;
	b=f74S2Wsa+oCW+D4WepWSMvMGLdaD13D1wps9QwESChPrjS5IcZ+Ma8LgiMHIBfAh
	d81d9wvqRHPMMN3rEWYSJsvf5SIz0HKLlACGWAPxQdpWnrGKmIWJyGSvfaHzl5SF52A
	JNZDGP5VMmQ0i/+Hl5Li7kRGgRWpjE7fBuQzZ3IY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652702639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pCUT1plk6UIhU+/aQyr2vQp+LCEvIqg+c7r7fba1HA4=;
	b=EQW4AIZWac5eMdQ0TfdzaZbGd7mH8MfVChd7hepWxshpVtMiFrrXAZXla+l86btf
	ic2YuQgKP/+o7p+pYIlIgiWyjZf5kUGRCxAJdvauAfsqJQPWDr+KGofGNZwHruvpH6x
	W9Gc/fkVOZiV7tC7gpN3lxeRf0lA9Yzhmy8l5cY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ccc0f471-52f8a824-517f-420c-a206-0789d4ac8577-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6e9f5aa100a24b276b36ac01632398633240c0c89042ef914af343431619192
Date: Mon, 16 May 2022 12:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652702639
