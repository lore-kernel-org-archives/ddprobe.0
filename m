Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426B86149
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645406184;
	h=To:Subject:From:Message-Id:Date;
	bh=oFzNrIsvtHap2MQMhMVg7b4b0UwDl2xDZb+yXa5KKkI=;
	b=AssIE3aiZ7LQ/HFdn3iFMkuaIL4p7a7PaRT9ZMopiMGncYHkx5vnZbZM25i3bqfs
	gvfpoMEl+uth91lZJ1Llu1GYJs0x2IOIogER0ikJWzfvtZt5ZLTh7B7+/BdY2tKBwnU
	9keWD4rnUb8kVjpHpH2e+tyJehEQgaTmEhniOFnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645406184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oFzNrIsvtHap2MQMhMVg7b4b0UwDl2xDZb+yXa5KKkI=;
	b=MApXmksI17XdNf1p/o+oRUy4OLx8RfEMG05MiuK9EqN7EkHJfCa/KigV6h97/iKd
	KFmmJODGILnDZIl7XGKe/9lgMqw1rkyXxXCqX3q/uLuQOu6BkUvHt/zZJC7Cnx/pB7r
	3mGS9cuTdVE1E45EYwZBQl6K0RwcjO+iMruAnGgw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19d9e54e-cd853b56-4e52-4743-ad6a-e2ee0fef1feb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0a85bde4e0dc0e5dc830aefc48d64326a1fc251076c82ba60d21b2749e82abd
Date: Mon, 21 Feb 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645406184
