Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B91CC80
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 20:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644868885;
	h=To:Subject:From:Message-Id:Date;
	bh=EqoML+rKVGkFdvfQxf3YHUz0pRjPh00H0PwYWt9x4ec=;
	b=l+f6Vch7wtZojAV18PnfOm4rHSxIjhdAvYuqRzpsiB6l8lLP+7t4HlsXWynrhiZJ
	gVvikpwBH9VKIg31ooUUaaGx7S2NubHPyiyEabifvtDJgouS4qEqusNHwZhqzSJxCC4
	q/DUUNTITKZofLrfMOaxXtGgoJHtPSu3SiZNE3Zo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644868885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EqoML+rKVGkFdvfQxf3YHUz0pRjPh00H0PwYWt9x4ec=;
	b=DWin0bbDeaVnIIgS2FxjI3VE3gAkI4Chr/vT/sA8BDLXgi5ecAsOYHcKhuM0XA/G
	ex/DYmYC+7B029u6qXwVFpVwEozb+gboqXKebrsg0BI2q64KF3Q0oep8Rua9LkvZO2I
	4PbVUk2jOiCeQ6wirZbf2ZTl/cD7yHn/GhadXVKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9d3594a-f1166000-6fae-4e73-9d33-8df9ac7aac78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c255dbbacbdc7c120b8775d41571d63029d4710aad6f7ee26bf1ff75a6c68e28
Date: Mon, 14 Feb 2022 20:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644868884
