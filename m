Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956A6622
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647149184;
	h=To:Subject:From:Message-Id:Date;
	bh=N8pTu+1EwUDKizIaqadFltY+cKRH9VLkV4huVJh5g2E=;
	b=dGCAuILCFlS8Rf3ItPylTYAqxw8aLgU0iH2JquufqWzlF0AZJNmpifhV4Wsj4vOU
	KEaJy5QvpDobeoloNRN4xm5MABU63zOnfeRAXExf1/Q/HgZj7PkAQkQQJfnuUORXHbQ
	ckiGVn4zTuKGZRTw8v5mMMBiBvBQjLGdJGFbOqKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647149184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N8pTu+1EwUDKizIaqadFltY+cKRH9VLkV4huVJh5g2E=;
	b=WWD56CEdOu2KuJf3mzcF2GMasPdn5VwKRRfQvDFTQXbhbyp11LSbGyC/e30DqdF9
	QiiBlHgoPo/3OBnyFuxrPzy2tAvHM5ottK88Ubgjzqo2VpnaU+gdNWtb5gghTDU5f/W
	5SqmglTpUod5u3em9B4zzUD6XaWttCa8Rajt+jmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81bdf6ee-fb1e9246-ff6c-42a0-ab2d-a56e0ad54ee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8964a66fdf1aad73e46f64e5880848e6c9c34117f39f2be8919774c2766c2aa3
Date: Sun, 13 Mar 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647149184
