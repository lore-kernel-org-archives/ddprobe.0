Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3620C7EF
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 08:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651047658;
	h=To:Subject:From:Message-Id:Date;
	bh=vrUa1EfbZPe9zN4siJlBRDE+NKQlFhsagk5S9EyQsSs=;
	b=MYTG9npGi0ay5AHtBjHxDFEKho9zEnMcINzAf1QOuKs/eSYLOX18fHnroNPPw+Qd
	2rM4N39mwBgCtUWKR+1ij307tKDSbKj6Soi06VL4QcskUxtSbBUUphdIroWI6+838ta
	uF8zuQ62nw8pJF5Dpt40gYd8B0O0N4tiOjji0u80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651047658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vrUa1EfbZPe9zN4siJlBRDE+NKQlFhsagk5S9EyQsSs=;
	b=iwe9KptI9mxO3nOLpTyTtsUC9Z8FyHAwWZBDHcwqp6R1xkONPP4RKd0sMH7AzHp/
	eXN8C9mMbLZmQDJUTyVF5Fr0FecNKhl8rBa1ngAoeOTR60L1rQ3d/e41IvfytTsmkrY
	7rEfZc8xu1OtRCV5uuqwauDXX/+AnNqZPKuoBLXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a1bf335-927edb3b-b385-4f78-bba3-8d3b162a0eeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d2282d5e9a6d9a05adef84c87730ae3480b16990af196ec64613ba5ae936650
Date: Wed, 27 Apr 2022 08:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651047658
