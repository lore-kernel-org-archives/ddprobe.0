Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F0F7C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 12:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650889978;
	h=To:Subject:From:Message-Id:Date;
	bh=EwjKjG7BTg2h2piBVslqxEpUfEwduqALDMZfR04rjSk=;
	b=Sc4t1QOl/8hzDmCXopnAa/iLxHxbCgX3K6J5cwqUoG7mBOY4CAoZKyRqtBMTzqgS
	fa1GBhuhcQlglcVj27w0hwReuHTyeNbchac+ICqKGh7+aDSRED+HVT9iz8lKkzyc43F
	ESmHm863bPYtoFvGTB4OOFNTQhnvR7KiGIZzDTEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650889978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EwjKjG7BTg2h2piBVslqxEpUfEwduqALDMZfR04rjSk=;
	b=YplPoHjF91EBwyaZRUy2WaMoEp/RhYnX9A5NLYZ9/bNmYXS/QekIJTbJTrvfOIlF
	PGkcjYBUn5Dc8g3sdE9ESbjaIGGJvz7f8XB6qAWUdf7Ws1rJUppuOykrKcM2fO3+95G
	LUmrtwPB5dPU+vQWsUiKxvCpy460FygX9MgJm5Xo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018060b5f1ad-9c46e220-fb50-44bc-9336-d2a2f871c16d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25b177ba522fea81ccf8855f32bbefd7ae4e1b2c21b426194b0314dfc0854846
Date: Mon, 25 Apr 2022 12:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650889978
