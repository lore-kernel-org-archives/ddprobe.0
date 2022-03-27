Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824647E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 00:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648339498;
	h=To:Subject:From:Message-Id:Date;
	bh=BBHQQqZ0r5uwRIg+oBa3VtMhCZsUX29OmHQFiammfbA=;
	b=Fph2juJ4kKR4fVeMaeJ6eKaDLeWvsdxpoP1dL8K9PHfmTQhCvm8FjgdZDn1lU0E+
	Pkcom3idcWG3S5HnlYf7Z59F9f5iCmGmEm8upe+xGQgIyTqGlVq88T4mcOOcwRzEXaL
	Vaec0985jonj6kUdw1/VKwUGNbOTPEmS83hlKPOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648339498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BBHQQqZ0r5uwRIg+oBa3VtMhCZsUX29OmHQFiammfbA=;
	b=bf8125y1mMBHBcJftHON6p9P9xqmyKqJHxk99udqxqUVGMKsYDduJ5FQ0m9UbeG5
	AXz9NQV1LyuIpJCkw7Ysif4fIzA7gP7EbTGjC2rTS9+6aKKP/YWOjXS8P+30hkWjnAD
	p872lkcrizkOOB65q0FHw4tEyExFUn93SAZG9EpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc8b0b578-3b50ee1f-9f66-4915-ad4c-a61e538cc9a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9ae0b618ca5df225627127cc87c2ce14b90fcfac5ec8fdc06ac578d56e4e695
Date: Sun, 27 Mar 2022 00:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648339498
