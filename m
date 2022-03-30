Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4D02F39
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 20:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648673218;
	h=To:Subject:From:Message-Id:Date;
	bh=hxVH+w/zp6Efzs5cmz5QRsaifGWK+GN+kyQdcHhcIwY=;
	b=S5iTK90/j/L9fyVMILj5z2yt4OUw1HT8bVWHmUTFJlcQQ31NwxMhaDBko5TdMFbO
	/+ipOCu687/w/jZVkfqzJ+PS0EuQaR+XojfyPTM8Qtwx0YxvnGFWgZkFIgeKZgxOVeC
	cYVX+hB1pWGug/bN6SE832xzad48+cY/E/QbjvKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648673218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hxVH+w/zp6Efzs5cmz5QRsaifGWK+GN+kyQdcHhcIwY=;
	b=Ok2oYJU9X+iKFGqGH0GdvNnO8SfBtFmi7KrVoUzrzHuRYbTiYvky9y+1XZjJ5h0+
	OcNH/7T3QePLHO8+BoEeuSjWLohoatLFAsjQunwLxXlG+3NPiPoMGJJlAooY2N4WtvA
	0Fr9abaQtb3inVT7xPJfTHzpWVLpjnnWBC8yIROc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdc94ded9-10108acc-5f4f-4b3e-afbd-a528dad0e282-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64bff31e73fb604865d5e31cafedd4a0230af5c4f0842afe948fc957c127e99d
Date: Wed, 30 Mar 2022 20:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648673218
