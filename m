Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8360E369B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645855285;
	h=To:Subject:From:Message-Id:Date;
	bh=nCZvz8wX3cpHOvrd5gqOUUaNs0eoStI8O2qGgR4/b9I=;
	b=IoJNIabuP14ti+P2tif8f7C2/W1di3GLJJqj4qV1Axtoif0K9MXHhgB3iFASitDV
	m5N7is8x1kV2jkGBT5ixGzrKLK8Dsw4U02bK3cjgQOkYALH6jf1h66j3OM/GanbXQhl
	GeOhAio819w1NfJNDANLgFxmospIMTC1hN94R1EM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645855285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nCZvz8wX3cpHOvrd5gqOUUaNs0eoStI8O2qGgR4/b9I=;
	b=Wk87Eu7JM65g7AaNAKSgS664qBqwCbpJFkazqQUO2Qj9XNL9k8y7Mk5v5nYUmmyc
	7sDeHEzcg/dEJTdLaaoarwZeDrkkGkZPfRFkGxigFw5l7o+zENsz2GQKVhfDPz0CeOs
	qkt0PhmClNbhFjVEsHR7tJdTZ8GoPAN9UfFbhvfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f349e9e0d-5cd20073-5cd0-4ed1-aabd-703e95843ab2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26f6a791a033679bf704e4d5a45afce156a519bf4154b7850c9b4efc6089d9bd
Date: Sat, 26 Feb 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645855284
