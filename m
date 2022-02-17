Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659764618
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645131085;
	h=To:Subject:From:Message-Id:Date;
	bh=cdbhe05IxdrQlzRa66Oq5QZ5i7jFF+aosXFoJNkv2/4=;
	b=gOPQ4PrGKrVd8Y8iyhRUaerohqItZK7k+o4N4REQSTHAqnolqsl7m7wCWiHNU6a3
	dA1inXto2BynKZB/cSnyltYUhIGPjh5THQ6RYrt8JJ1mLrXF5wAFcdt7dwVtWJ6pbCr
	KmDx8qrBKVS9VuQM4JNZf4jogrk0inrVsEHQMALI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645131085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cdbhe05IxdrQlzRa66Oq5QZ5i7jFF+aosXFoJNkv2/4=;
	b=Gxs3omdqlyxETOnn5CPRstHqXF5/rwN3C3fS7YkWEvrzsEWoRsCyw658bjdEvyuJ
	ln+ZaRxQa5f8s2gPIHBS5q3XE6+B4EgHkRhwKlwV5nkEEhW/s/md6r61zkyfFvMaC5v
	m/qdFXLsDpLTj6PIHnDRBRXvmjZgVAYfl+JogIRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f09743431-bf91a4e4-84ca-4bb6-b372-f68f44c5e9ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0261b17448b78253fa35806cd4b02d20ff24121cdf688a1e6339c088619e4b3d
Date: Thu, 17 Feb 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645131084
