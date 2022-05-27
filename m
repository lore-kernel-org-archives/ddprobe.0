Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE7D7F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 00:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653610979;
	h=To:Subject:From:Message-Id:Date;
	bh=atNH0xtCWiD2w/eUhZvJst2dIyYfhPOoRLq1lQWZCSc=;
	b=fMN23i5U31OYTCjkHqN3BU025lwt+gzDjlvzR7O7yo3vaUnl6kwXl7peQT5LUnzn
	tGcNDAWq8pqIXY7y5O43V2JwmEo/SD9fniFXgcOEbqfCfmZ5V5Q6AFwgHKzseUz/KvA
	35EmoecqgzgK+nKndDMkHJqeJ3QlQYtx5ok7PSvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653610979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=atNH0xtCWiD2w/eUhZvJst2dIyYfhPOoRLq1lQWZCSc=;
	b=KE49lXADQ/DUZd8ZF9T85mGBI5sAWfqGP+hgZN+G/kbaUNQc06tPDeDM/BRAVgiX
	reOilogBwdZRl4weY3c7b4rTgmHnO1Ldl2KX3WBLXYEN7WxQLo+8mt3CsAfOcRP8WCP
	1A1HMQciRBGgqgbILO2Dp2NK7jtaLaCvYqbuMyvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018102e51ff3-616d7700-046c-4b4b-8a84-f089b58ec17a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d886ee30021aaa0db02eca7c7d1359da8ef959d90a5d1cdf98a7cda2d9a47335
Date: Fri, 27 May 2022 00:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653610979
