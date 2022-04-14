Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED2317C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 12:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649937658;
	h=To:Subject:From:Message-Id:Date;
	bh=+HZ8csbmXbg2wDZBbtYB+8qYCqdmV3QmlTdxiHGaoWA=;
	b=LgWYiTR33TWOn5Vz8T6IUkn/zm9SPJ2wMP9KAt20VZSiniy6q5ObQ29xetW1+CKd
	TJHTrZOCKUOp7kdAcZHjdFndLipaxvSAnSidK9b6DZdgxO4MhuJhprjG7wxtP1aFjCk
	I66HQzPw3YVVBtWthtcnb7bk0mB5Z4RuQq7+humw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649937658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+HZ8csbmXbg2wDZBbtYB+8qYCqdmV3QmlTdxiHGaoWA=;
	b=T0ZMmKNVIjW6/isB2ZX2ayRdiQqJm2qfTOXAMAsvMYpN4RqKV0x8C7V9hhHTQxGW
	SP6KEbFrsTwYncskA5m9Ck05+OsSB5ugyw6EZNRJF1l+Bp1HpcTyBOAisMMUF0VcRVN
	1j1+WlUeTTtkm4pzd9+/pE72KNWZruwtW36XTFj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018027f2b189-d02c1caa-eb2d-451c-8609-0a31866ec681-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1e12cf97c524052d7aac28a0ece0e42151f03a6e1524ef7f175ca918636e412
Date: Thu, 14 Apr 2022 12:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649937658
