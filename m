Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9E92560
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 15:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650988738;
	h=To:Subject:From:Message-Id:Date;
	bh=/9dc1GvD7fL5udb8lyO7PGuHAeyYHKXmeElyoI9QGLc=;
	b=ICfdaqPk6PB9Xs4sIyoYMkxPpsHoPax7ZHmWeKRb/puqODlIg893jYduQ3hvbQEc
	GEgM7E0ROHABPU4rRwo5/T542Q/N0xCbsbkV3bCha8XUIg5xcpB8tyaF/Yu6r7i0ine
	M0aFdl+I9rwSm4gKj8iafJ57AN0T7Cw1vg7yqRQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650988738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/9dc1GvD7fL5udb8lyO7PGuHAeyYHKXmeElyoI9QGLc=;
	b=az8MBSl071ztqHwxKV+pw6+03931wmd1ShDWSNBagitDC0o7RWR91Qm4KQYRvYEP
	YcttND5Z4Qmkh/V9TcjcHf6RAQvMFYgIVeofwGQ9rJT0C9HcWGyZ4Ux2tUOsJkd9w5h
	qZRy2ee8EsRrbjvWwQMYMQYOrs0luuNPrtDtI5SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806698e6e6-81889eee-f346-4c69-b660-b0c10cf59ffb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb3f3a3a32ab740016e072bce16e8bdc3b90db4864eb43a7b666f86e44b0ff94
Date: Tue, 26 Apr 2022 15:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650988738
