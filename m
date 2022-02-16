Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA15F1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644987385;
	h=To:Subject:From:Message-Id:Date;
	bh=pZDn4tSm7fdGexT5ritBcy1IwwQxhaU8slMW7oCj7P0=;
	b=FAk1T0AYnv5HRC7QvmuEHmklqjnB4K8LxiSyOEiJQseoiuIWhV/cr6rQWY2RDk3R
	+fKLZyVQgC69Nys00mrPXID84kq/yEcoShcdNBa41ETxeS21Zh0QGN6BQlqW+l56S0J
	2zn1ZnPvi4PBJk3IqHvSaLbZENP5tW+RX+sqA/YU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644987385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pZDn4tSm7fdGexT5ritBcy1IwwQxhaU8slMW7oCj7P0=;
	b=Ml9Q/uVEEjAn9MvhAxOChY71JjFt5VXkRBrmKRBiAsfg8IR32ANA02ApVEI45LF6
	UxqeQvbTm6JdDwOZaTzJfK+siHvj9bWkfiuqcz496PPVqWOkR7xvZcT/xhPZWrHcB35
	pfZ4y/cod1lgIb8NLHGU70pZbK8nAi8KWkoSBGdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00e383bd-322da3dc-631e-4b66-b63b-93a5d952ecff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e470408aa7926e918f9129b762c489dcdb49fb1e0e180e0ad6f21eb03beca12
Date: Wed, 16 Feb 2022 04:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644987384
