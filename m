Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DACD7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645485384;
	h=To:Subject:From:Message-Id:Date;
	bh=KzcCyjvqduL5ryeZQj+M86i1PO1Ca5qqBnwK7IG4u4M=;
	b=Scg41qE9l5ASGaYVrtrTncEbJfjb7NdMoYtEOngPq+zoHBXr44oxfJ00JwWaaYld
	aCIff/zskJ2DYFk/pkhahIlBSk6cJbs+Rux9LKYQj9brY3qDyCB1LUynLp+WiuoIc2E
	6VVyCteyj5vvfakog830sprD65TKLovSqVNcNvCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645485384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KzcCyjvqduL5ryeZQj+M86i1PO1Ca5qqBnwK7IG4u4M=;
	b=CDu+iN/0ysE4mcgeFK20gvpGMiWAUtOp1VT1NJvKJJV5tOkyzFJeR0NlcaMPeFch
	kmn55L2BQ2yzfv8Xy59mSUjuNYSebltPq+Mn1b31Y8RocFgV/xnQxXnaDnTTMYqqKT7
	7AQVV9vNwX82TeMQIwUduoTp8GMX29NZUjFtgNVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e92648c-fcfeb85d-6ad3-4b6e-ae24-ddf3606a0068-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83329c32d08f109e3abd8d451ae8ddf826b382e06e19fd36e7e61b304f7758dd
Date: Mon, 21 Feb 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645485384
