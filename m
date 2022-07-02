Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252CA1C32
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656745612;
	h=To:Subject:From:Message-Id:Date;
	bh=9o4ki1h/qHEl7Y1jSgJc+47ElKHCl6rbypQhFQZrgB8=;
	b=GYGvP4Vmr1ysNX7JwqYCHsVSpHnwUgrl2eaE6qc6CHFv4GzaFqc9nTFqfWWasc07
	Z/AYgw2Oc/0iAioW107Ya3TzAWpw+cGUulcesrZheV4/2bK+9t7jf9HCt/sKRxSt+Kk
	TyN69kJTPsTo/5WaZPiik0EOD+DLdcAqhY+erdfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656745612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9o4ki1h/qHEl7Y1jSgJc+47ElKHCl6rbypQhFQZrgB8=;
	b=NkTVeQGf6EI+gMjUu88abnh+144288+lAj8HNk7L56SetxK3Nb0ReM85KNxH4p2t
	InQ1b9ZjDzo4KsZLyK5upYj21yZtupIQXTII4ZXAJg0oq4IeUSbDpmcPA8vJHcBfbYL
	Rdlyd+QTPHP+KNt4E+OtraVuvidBriHsOsJO6Z4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bdbbd431-81d2cf68-59db-4589-aaaa-63e2cca734e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4e0571bc3231f80830eab96baea501e1d4b95a6a098f8f5304bb9792ba25fb6
Date: Sat, 2 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656745612
