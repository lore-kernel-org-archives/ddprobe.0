Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EFD17EC
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657782412;
	h=To:Subject:From:Message-Id:Date;
	bh=hRUYwJTJdYstTT7nEIqRy5zXCRrRj0r1tW1BJDZu6aA=;
	b=T8l3dKerNnYu26UcXtYZQP61OgGKmeLvj9srYy4V+6lFjnP7yOUiny1djp+PJUnu
	844sghcalvq+HHSUlmMp9JHLE3yuk5zs75fO78Zr38jBghqMlSIJvJDts7wA22Td3UA
	DwFiHWNYlPO7ci6+CGnlcomcCYaK6V8P/PNXdllY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657782412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hRUYwJTJdYstTT7nEIqRy5zXCRrRj0r1tW1BJDZu6aA=;
	b=VgcI4ZtcHabq4erexHaRQZNgKz8ZrLktIXRkdKY/5VP+puYq6RNXj/EFos6qA04z
	NR4breMUN+wYd6P8K0MdqIGz6PiDoc/i+Dj3qgTmb0e6nE2dqa8/KYiLvC7olZTjS/a
	eNWIkaxOQ8KA3YrU8fxbBnO5l+IEUFhP6AwoJyW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb882416-208d1987-8ddd-4df8-a332-7b5f36dc03fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c5e85b9beea5afc7631ab66000a8a8b03040a36ca7af92ed09d5d3614e70349
Date: Thu, 14 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657782412
