Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976FE7A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645780584;
	h=To:Subject:From:Message-Id:Date;
	bh=iPNENbDSq7PO3xg+w5vmmyPlaGPuuPHltimeIL9VTyg=;
	b=lSWiBeE31H/8PD4gDiqEXc+dhBzflqvGuv60u2gPbhckyXA7IB4WSMyM+M3zQanZ
	rBfXaqKm4vxBUAgHavOtrR49nEpd6+mKWXn3UFtMsxWPTgZCSE6lBz4tw1VBa/tLCrt
	YF8GIdpAtsJLN4q8RB2Zyty6+X7bANW1CZ3VGFQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645780584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iPNENbDSq7PO3xg+w5vmmyPlaGPuuPHltimeIL9VTyg=;
	b=Ggx2ShzCy6R4NNJK6/Pke2l4jUu6u6u3TQzcU6N504JORnVMX+g7H6nKKh7KjxoX
	ms9tp/nQxpDVvIU3lMDHWqYwuWGAPE85mVYkPqdDWByKBba4YZn7Mrvu9WGD6bjdhA0
	m3SPuDxycKey4uKEWcoWufXetJgAvY5eGIswQoLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f302ac96a-2b0c27f8-c735-4eb1-8fb5-6f37195ad01d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25523bea304543979b871181ccf699ec3263bccaeca4802db21dffa0a8732239
Date: Fri, 25 Feb 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645780584
