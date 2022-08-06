Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE0E1107
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659769852;
	h=To:Subject:From:Message-Id:Date;
	bh=yaTNC+jbK1XxoO4OylPo3SkwsNJ1T4fYMGhRDP+j9gk=;
	b=F75DI8RCNZJCtQYOCy9e5aqGKSZKo+Tm+klFhBKu5i8EWGHk4ELDWujoqq8gRFH5
	WP9eNpSPJCd7+z1AqucjrVPlyyv+kWyYhNx+BRqU1h9dcWu3Imgokb0IG+rjwdN13rt
	jQzDYTBiuuo5lfACPzV02ffqMSEkyfHc/DzOqmas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659769852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yaTNC+jbK1XxoO4OylPo3SkwsNJ1T4fYMGhRDP+j9gk=;
	b=L78WOXnbKJ8d8/hVVwYyCC6P6ehzAEEQtMR4PREQM7/3eKHbnD60JXKB522DYI7P
	yjXhFL6UffDIJa3PJy/t7rpK3eQ2PXxweZAaGQyHr3CTr0urco5Xk1xaKNzDdctdemw
	csWz5Osyk0dOMOGdoQzfwJ/7PaYdrW+0s83ZLvZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271fe12d1-356371a1-a238-417d-9ab3-a3ea0233f9cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dcbeb8cadbe5b77bfafbc0e215d34b858ac379ed811cb0fbce86b600ed0ac7f
Date: Sat, 6 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659769852
