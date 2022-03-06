Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC627C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646605884;
	h=To:Subject:From:Message-Id:Date;
	bh=9Yggccumdig0jH1qOqVoBf04A6Bg3GknvSzfXhPUGZA=;
	b=IRjznzaGj1C/m1NoFxwkaZwQPBTcYUFFFl/XUe5xxr/Tg3YzTdEDajb8rxwpp9zD
	h0c0TTmxUns4yiBLlI5EzJhLKeGWnw2DUSfZfMP/8k6d2M3do/1Caq9VSD64kSo05+l
	JC/R+z1gdBU2hNr1DYyxyRlgDilzH3c4W1WuQ1NM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646605884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Yggccumdig0jH1qOqVoBf04A6Bg3GknvSzfXhPUGZA=;
	b=KE5tccO+KDNYXaDhIdr7Fe7e/wUbIFucgY5X0F3F/eRjA7DRXnYMgU2vEPVc6MGD
	FdzGE6wDgn84k9H0alG7omhgpln3pn8roqX+JIEmWqDYkLvlZGMqIal0SLYaYyN3vnj
	1rbU8j3BknogfyqmjCx7nnONR7CQO4T4Rbwcqk/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f615bdd47-a7687870-2db9-48f7-a0df-0723c4cf5b01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 163d71106504192d02ce2025edb5f297cafe0536c54f303ae8ca3ecca2ebd008
Date: Sun, 6 Mar 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646605884
