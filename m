Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A2C812
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644846654;
	h=To:Subject:From:Message-Id:Date;
	bh=skN3LwoLwfB5hSpzYHNHTESLJJVMVU/ZYHV4AK+4Ars=;
	b=b4npwxc9dKKdk9E5qWxS/GDAAEy2VXHZZ6/Ynkf7Z0xJr/pUkHOzjWiAjLnlytTz
	E7QuBAzexLd8x8OB3ZvdGQP/PqduUQnAn/vugSkkrBp9pX/ENnX3ZnOsrrUhOIMXeSp
	N9EqboBcm+BZAfdy7ferlDNtXQwpYk50MfSzPfs4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644846654;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=skN3LwoLwfB5hSpzYHNHTESLJJVMVU/ZYHV4AK+4Ars=;
	b=NrEOejuGEt/FsvnV4O+jps+BL417NilDCkuGA9OHZ326IwZwIKvNo5U+5qJe/V1M
	8r0Tvs652gipoCiU48MBFSI5AwKsqISXN+HHeuw/I1ZQn/9Cbams7o8XkG3QDmzxhjt
	d+TJ+q5Qde50o0d8Z4bX90r6P8DVgTzRWHqYzmiY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef880218e-53d5f7a9-c270-49e9-b0fd-3e43c6e6b80f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90d94cdfe4bbcb4d93ff702515e68168c45f537415ddde362d7be75264a19306
Date: Mon, 14 Feb 2022 13:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644846653
