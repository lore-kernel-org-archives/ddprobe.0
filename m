Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8187A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647932784;
	h=To:Subject:From:Message-Id:Date;
	bh=DG2IwBnkpjD9CruB/Be4AvdA3M4L7RNw2D2YGteyiig=;
	b=PW/AXk9zln2NPaLAASWNBCKxk1uYpXbj0Ja4N8IDKA6jxpQUp5fsCNU0XEh1rhoq
	xiz+nhxlVGTZyjfLIfqC9SajzdUbZ7sYaGVU51nzKReKsavmED/kbWt+yjKmjtqLtQV
	Qd6K+2hE8VjO0XNqowBM788iaWOfWmkYW/+ZEZaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647932784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DG2IwBnkpjD9CruB/Be4AvdA3M4L7RNw2D2YGteyiig=;
	b=WUvQL8QlhD+t0hBY4lhOqKxzZiFOv9mpn78xhdF2vVSPHFy3CRD3e3YtILe2G3P9
	BcAaL2O1n/N9NYMWgSPyrFLM9POBEtRCC6WBILIIE1dYLwFByQVhvw3jxmNWtsqArRK
	FOPAYbLsHJmKtMVaXGy/tterpfR3x2KulKEYaAJM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb072c054-2fb6ae0c-0dc3-454a-82aa-a4878a96c92e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c9ec11cebdb7bfeeb528fd923b564fb556eba9f4bbe031fb128ea36a36b3585
Date: Tue, 22 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647932784
