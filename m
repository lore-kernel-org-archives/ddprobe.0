Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09DC7C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 12:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648729618;
	h=To:Subject:From:Message-Id:Date;
	bh=j6YA9Ci2tAgP4nsrywV/WmzmdJx2PFBcpx2HwtRepuk=;
	b=Idy/5QCYcY6gpoeT4Pr+W9CgXLhudPrThCnIfR16g9A87TG3GpPf/3GZnvqTAwTb
	aFu5Vsix07SGXtoQ5FXvn5XAHGJlgcBzY5gWM9vwuTCo1vl3xOcy6yTqTmMo9PratWk
	HZe8+7tizWXN45OQBkoLMgtrUdK1b/Tigs7rUnBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648729618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j6YA9Ci2tAgP4nsrywV/WmzmdJx2PFBcpx2HwtRepuk=;
	b=Nmlb8d5bih6xHXUOhXXuOnybbfR1exz6zrWhdDCg0P8PhaV27rXJdXhWaDPCfQ+7
	kEQxqGhUnI8fHwa20bC9WDcjuW+PBh7aM0hXjllxsKyqCUjV8jllptjpmdh3O02S5Ce
	yJmw2/judlR5agcfXhroqltvyxcMbpcWAQLnbo/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdff1776b-64382583-5d2e-4992-add4-ed15fcea4c7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 222856075954c192f20b579cb39da7fb3e0b1abe551fa37a5e08c13f9b41df50
Date: Thu, 31 Mar 2022 12:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648729618
