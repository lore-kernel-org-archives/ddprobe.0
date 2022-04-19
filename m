Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3A81845
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 22:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650409018;
	h=To:Subject:From:Message-Id:Date;
	bh=PYYhIA0Eh0DzQxptWKj85ABwK1y2JfE/7c3HhqJozmY=;
	b=MrGiTwCfpKYFSR4y9PQRGp2hK3Eg1jusUtZHSsubI7bnUp88PuK+sPKvDMQQE7Jo
	zR6kTyW6GHqm/FKFF+h1F2FKyVISgqLJybWHy4QYFqTXxgN/Y/QsNDCKLB6/WNrDJG+
	ipeuv+IWvhRM+vl9m4ASDqV3CUjPY0JlLLP628u0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650409018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PYYhIA0Eh0DzQxptWKj85ABwK1y2JfE/7c3HhqJozmY=;
	b=W8IWMyRvlGvU+9KwLirucNgbua1c369QjXDWf5xkpHdqFruvp8N57345GNkttjC5
	bp480lFV8Ud3gHL8Ang5KZRUuiISWBD3iHZOGZSEBhNBw8wKlMhsneeN6DL0A+u7qCh
	Ra71m3AEihqQx/CJW4IiH+jpfD1cZQL9/0cmFaUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180440b1386-e7388614-caa2-44fa-8d07-71cdea7aab49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2664e1b3344172526ff1942f7884a0b4b5740f572760d3a3854173bc38b3b1a9
Date: Tue, 19 Apr 2022 22:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650409018
