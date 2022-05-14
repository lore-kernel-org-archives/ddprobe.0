Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED87D2577
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 17:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652550959;
	h=To:Subject:From:Message-Id:Date;
	bh=toWCVh6t1W1PAnFg+xqBLkCLZZsOevmYxoCJsB87C80=;
	b=c2fN4WRz/daJNik2vjxzq1S62URl4hBjW1zyvyZ58aicN7EjFnCEXEoZ9GIF4XSz
	h0PwPw2wKJWzaE8MUseSJyoNrLALhLp1UHoAhumZPELhUjn+8LWzHqibaEx3T0+9Y0t
	2ZqwVg5+rS5ey90Suk6vMOcJShvM6tlT++Ro9NJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652550959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=toWCVh6t1W1PAnFg+xqBLkCLZZsOevmYxoCJsB87C80=;
	b=gWtDfrFNKkU9Zi3jcRj5gzvJMVoA4s0lbN9laugLnzeOwbmWrh++f/G1yAm54zV0
	qCLpktLD9ej3FbWKs5yqHnTpAkaK/gavMNPvX6Fpg2UUJ3ISRDVvl120WrqrtDLAT7S
	IRABUWdpkJ2winyJ+0/7SQrM9UnZhwx8DdW/zQD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c3b680d8-a8fe95c6-a92d-4bbc-9818-a4746b2e88f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 807efbd24bbb13adede0766ede9f5e52780914ae390919c99ba2cc2a513756e2
Date: Sat, 14 May 2022 17:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652550959
