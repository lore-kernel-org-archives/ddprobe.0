Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E982539F
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660680652;
	h=To:Subject:From:Message-Id:Date;
	bh=lnTQCPdT7TUS//YDvQ39R60+s1ZSqIwBZyTEoIAdFBA=;
	b=Fn3O16UeA8PPMmYYI4nFHJ2vI0FTvuK1cp7X67YW2UDogWsgJT/NAWrAlR4l8IUZ
	+sVwv1idBRU1nZETq9aB0W7BrZf/sfevu06UqY4ILQmTAaOdwDe/qP6PLgQMtki5qRW
	OZZ9cT6JzXcdLxqdwF5+vi0KUvRlZOH1fWbKVkug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660680652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lnTQCPdT7TUS//YDvQ39R60+s1ZSqIwBZyTEoIAdFBA=;
	b=ESR0UHAhdMHmo+UL3olho/z+TS+nlj5HqW59fRrFzOoDr7+YQusoW1bldtHkIlhH
	I33I6BOYZm8uSczJAjvUhpy2XhbrWAXJQePfhxgWyg2fRjBdWOBTNzUkvw4qTP9+741
	YOS+t516RqriLSKrI8Ms+lEJy/E/v19/xTYbtqwQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a847c71d-97dc7d7d-f777-4ae3-bac2-120d5a61d902-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3844083e52e45243b791692f68ce1463fe1d9e50861b0b09dfacb3d966ee436
Date: Tue, 16 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660680652
