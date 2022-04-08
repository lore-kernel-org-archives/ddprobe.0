Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D80367
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 10:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649414338;
	h=To:Subject:From:Message-Id:Date;
	bh=CHogh3wKA3Pk8Eks9RfbrbN/0UZx3g3cHbH9SOBFxFw=;
	b=JbANKmq7PqZVCgvJWxhPAC59gwCuJN99/j4ibcZ7w6VaplWFryUM0+86WVIx2+W9
	zSmgqMoe8EbaVSHTyJIR0Fi1rLS0wfA/Q/VGsBUtW0oUM9KGioZUwsRitE8VPN/8MWU
	LWd+Rw8QDwSukqT4/aMCXgT24hnCzkKFo/bKR7CI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649414338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CHogh3wKA3Pk8Eks9RfbrbN/0UZx3g3cHbH9SOBFxFw=;
	b=cl/nl1f7LhAuBKUb+Q2qS8gVmgPnLiby4Tge4Vt4OqNUhUDmEkUCqVFotRVfgPBo
	ZnKiwPqAUkgh/2s1Z9Pfv66Amw90XshkoqLZMfZQKCScA49435+drxUQQTkXfJQEWld
	TH+c03XLNqSMjGtrKbW1r4rFQRkv440NTMckkPPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018008c1774e-031f7f7c-1a8b-4e4c-909f-45d725cf832f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a62fb61acfd52f9c9c018da8784514b67ed75b9cc38ba1fa5b8d549ac6b820d1
Date: Fri, 8 Apr 2022 10:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649414338
