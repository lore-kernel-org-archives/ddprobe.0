Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA4F46A4
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647448285;
	h=To:Subject:From:Message-Id:Date;
	bh=c1jnIL91XdsmR3FfW/aXIysYLVhDNLZHimEdYmGUrQw=;
	b=eHWZv5rkbuuhkuHal1REVhF+t2W9jrJfmWvZXC+O0GHQmD+TGq4CJoPrFtbF4hIZ
	nAeY1gr6DQPlRkEgCKMcc8nKHcGCScTwjDjI6IKYaMVxg+MX414WgSvzTsDzsJGQlqG
	CP3Bnzt7SfpZ+waBzZFeJxsFKWC9BmvS08vFG6ek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647448285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c1jnIL91XdsmR3FfW/aXIysYLVhDNLZHimEdYmGUrQw=;
	b=dlR5OAyqfhh/Diw7PULZr0CHrHpJ7J3HggQzwfxfRmKae0Mp1Vv4/lI2b6uxBJaa
	kN8RQyiUSvEhxfd42IA9DdXwIWUbaboRZhIqlreTs9rd4ZoZt5RVAk1jGs/K6p35DSF
	hd6DFLUEkSqNoNShlFj28M3Kwl8U+7u0si86DwCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9391de4c-9b179c9f-f5d2-48b8-8701-cdb4acec66a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40198bf47ecd283b70d998a44589e9f0c56e7071d7d7e29c12cef43a9e522b00
Date: Wed, 16 Mar 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647448284
