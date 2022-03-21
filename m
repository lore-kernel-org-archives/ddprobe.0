Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21F27A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647840085;
	h=To:Subject:From:Message-Id:Date;
	bh=r3cXqsTsz/91NTlroiVo+GkXr4Ob/m5Kkun0WnUmk7U=;
	b=YJRiA2uUVmoPkNlNgUCFfFkdgrbditwu8u/9s8NLdjS7mXQ8G5tJUUWK/cD1E1Gu
	Gjfb4BDl5fMTfUUAhmrTooHgaU17uzL40MUUixJW91Ko9lgWUmSh/ZOucZj7FB2RI9f
	rSio5Y0sWuzp2uKTkSTJK+wN1ndAhqpowlUBREZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647840085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r3cXqsTsz/91NTlroiVo+GkXr4Ob/m5Kkun0WnUmk7U=;
	b=THQhLCfvldK/7X7gHX6JxpW99CIeFqMdeXBZO4ZFMtZi2jvAfL7K986GTusjZcN2
	Jrfgc6C+K3hdEZdAPFH4mq2rBF2Der7EEhcQdVwloyY3uqZxyJPUwXq3t+vTCReClfC
	XAMaxEsxXha6BB9syFm8gN6MS1XOeY8Z8zT+oUj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faaec42fd-079aa9c6-7131-472d-b73a-1ef57b9fd494-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7605573a03104278167456f8b9c3a7116ecde1287e9de226c549f76e59b95946
Date: Mon, 21 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647840084
