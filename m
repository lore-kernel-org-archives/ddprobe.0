Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E461610E0
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 20:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650400918;
	h=To:Subject:From:Message-Id:Date;
	bh=UhEAw4V2Ua+E5vLqQa/4iqWA8wNQkXxAhcTv32kkiTw=;
	b=lt4MH4/E+BdyOi8OEDJuE2C9YA2M+udiAkBlAQmbHzfsnJgtiomrwL7/HvcKwmVs
	MxssA32e/qrwAAfkrJORmOCLOOaQF6zdeYBbMyJPS7I6VxLSAA+JNKxwSb5c6La7YXe
	cDOvriaFrQ3vqZYmJVJ57a4mgsh1tkL8VcR9epMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650400918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UhEAw4V2Ua+E5vLqQa/4iqWA8wNQkXxAhcTv32kkiTw=;
	b=GZsZK5KNWUKWXzyyhwh92M6/LsyBqeU726oIuqGGO/a+rktZwYdqkC98ZJSgf0s5
	8le1mXqZR1+jFI0U+xpHjVE3FzZSUIycLSZsU9TvUY8Uwq4eWh7WpceRFRehsQFlNRK
	wrQ+S+gMJaANzSqur0B5aDl/ryxsdmg4UINuRdvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180438f7ae0-7024b6cf-c8e0-4d52-86ef-0880834cffdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43d6f624d549f76c5bc8f2ea77545faed702c5c0c1967abd1a1d69881b43b3ad
Date: Tue, 19 Apr 2022 20:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650400918
