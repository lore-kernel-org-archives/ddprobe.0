Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED57E20E4
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 14:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649429278;
	h=To:Subject:From:Message-Id:Date;
	bh=IU+qi333/Hlhvwo+hbaE9L3lOZeh0hLHBXGA2LLxdLg=;
	b=LuaxT3hZwfZKdSfbqPhM3Bh1rP9oeJyvdRq53lkyXfrSmFNrsd1U0ZvEgjVyfvTw
	Kifxc9lJAyzblVFvPWIR6NHxL/u+0pVTVukCCU/oz1GC3cu4M4eApFsJJ4131nj6qgO
	Pdkx/0Nu7eTOKvuFHw8Yin0dKNItwhuxY55BgER4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649429278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IU+qi333/Hlhvwo+hbaE9L3lOZeh0hLHBXGA2LLxdLg=;
	b=dGUAMAKQTvaZkLb5ET5CdW6WMDwZ2kmyzkKptG5I2lEHhZmHXXNrZOw49oR26m8a
	qUKSG7MIsPJ02GuKfUf0+Lo/YAYHpvBbyKXsMc2nfCYfNeLOcAIoNqg7jb8U0GREVux
	s3Z1yGhZntOXXI98QbG6AOTDZOPy0yBP9R69ydlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018009a56e5e-2cd24629-5284-4e12-883f-ecdba7970769-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd468d2bef3723e331dadc3acfa1a3ad12a7cb95a5f11f13a0e6590e721c1682
Date: Fri, 8 Apr 2022 14:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649429278
