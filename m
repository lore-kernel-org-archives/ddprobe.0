Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2152570
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 17:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649351338;
	h=To:Subject:From:Message-Id:Date;
	bh=K3fbVA/a474NHGQYrJMd/vt1jQcA9jnFW4LZAFfXtmI=;
	b=e1WktqOrw4nnSnT4qGAW5fkKKhzIlNuMxtL2t9aRxsZu7Z6KCVNPnkSZ5BND9mJw
	lzsCMhGvJQyOV/juN1ZwE5nh8BN7Ai9PkYBNvgSZdDOBYAFuU8cCvdrip4kshbIn7Ll
	w1paiPdJaZDs1x/p5UrR4D7XpGEH2+Amez2pjCRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649351338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K3fbVA/a474NHGQYrJMd/vt1jQcA9jnFW4LZAFfXtmI=;
	b=F5l794v6ML2YdBLjsyTL54Cd7dwHF65gg0n7Zxjsf0PEodjgRLShGv30wwBZpDbF
	5MxAu0jk3jcng1lSWCeHPXrBLIteTFsrGMei/PpdTaL8/giP+LqTgunlGgXVXa3cMaY
	e6Od57UwoAJCCXxDQGM6di5HuJL45HXaUHpD0TZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018005002948-3f34fd9f-d2e2-4943-9f5f-d3c4d7b86ba0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dca2c7f4e8b3ab8f6f83352554bfffe2d3a5de5b567b600853ebd5f8b70725c3
Date: Thu, 7 Apr 2022 17:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649351338
