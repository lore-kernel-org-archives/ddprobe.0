Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89261C89
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645670484;
	h=To:Subject:From:Message-Id:Date;
	bh=MDdynWkem7XE17WlOuoG/9LB2pRrb/hHRdLByuF0BLE=;
	b=cJP7DGv115gvL9qYjSeF7239ydY/6aa3QByciKqSrtzdB/WD1c2hinh7Yu7niQIg
	bAP9htRHsqKjbiOoZzI/7xePnSAD36786NvqUnt/gKI1BNK9lx7c5wJbZyGr1G91ovt
	3xB2NfcQZDXBl6GBJdbegxV0fsvz9mdWAQHA78f4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645670484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MDdynWkem7XE17WlOuoG/9LB2pRrb/hHRdLByuF0BLE=;
	b=g4zXmqEJRvYpQfeTfsmw+KCU6u0n2L743C57ijKEXsDhG1aeIXrJFpbmLTg8eyKB
	gSq9Vw3F6SteN/d6Sgu+06k/sQSU+K4DDBVJubrnZbgrnOII6fFFley49OtfK+FZn1J
	IVboqyTU4S1y2CEQu0/B00NHnFs53nFZWSw1kYGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f299acb24-4ec21710-dab9-4c2a-89ad-f47f3ce2fc49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b89f6a78c507596e47aa6d61665f8eda3d5a0da19827e898ee4779be61e254ee
Date: Thu, 24 Feb 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645670484
