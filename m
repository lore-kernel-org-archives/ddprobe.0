Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D9015A8
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 01:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649122438;
	h=To:Subject:From:Message-Id:Date;
	bh=CqvVOjWjSO2fxsgyBLtwoxK4+oUyH9Ia3Y0BUH7IDms=;
	b=XoRhBHjBghMVXVB6nQskBzdb8YhQHY/MG8S7cc7iHbh/R57wNMwEHMped+WsiyxW
	gvN8iA7F/J+j5CuM/rJqEKJve9oo7mAqVHLUNsDl73hHe8Vg782gK6rtM8UVJgkwkn2
	LYSwjC3/k54aqTdAgG8iy1bLbPrWp1TZOcEmEAmU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649122438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CqvVOjWjSO2fxsgyBLtwoxK4+oUyH9Ia3Y0BUH7IDms=;
	b=hw2Nj+2T/QR90d2+v/y/4oxZdUbItoSh1GXL4Vy7TXIFLtEf+juo8aJP8AD+54/L
	mbengsjVmJl+RvwRhmVJ3vsPZ6Xe9TrF6AQ+8cHaIDJARHFiwD8pgdShBzj6C7ypqVZ
	pE+wspYZ6WjhgS8sbqoeDxPy9FNIHxBqnfYFOaaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff75b6c9e-3cf4041b-546e-4f4f-aa78-fb05e36e651f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 139b5572f3e265846512d3eed9a832b65d2102d67905c022d4ba15d5afda3ab3
Date: Tue, 5 Apr 2022 01:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649122438
