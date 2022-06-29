Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8F933CE
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656516412;
	h=To:Subject:From:Message-Id:Date;
	bh=1uTzvNCkGuiDA6GIXT8IifNLJgoxXf2Rduz7oVEvOiU=;
	b=N0jFb5i+YY0t7+B6/GLAvb7l/nwRSEG3AxTNZ4hTC1VoB/NnkwJc7ZHHChX1/kau
	w8y0vhYiHPVGR8feIjUyo1zXD2EuUTJfiAdkzPtN47mQwRpc4lVbzOotK+/hRYg7R/g
	wcemIPTL77te9lYt3mVzy/hIEKqxXMOrLgkbHHyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656516412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1uTzvNCkGuiDA6GIXT8IifNLJgoxXf2Rduz7oVEvOiU=;
	b=AAxGKcAl8Igd77Lx80lakepOGxWL+WKalJO0+axHqSZPq9liiMO3jwWA0aLq2PSP
	etIWU1knJ+fMMq1tXFQ1PpwdUpucyD+9naTrEe+XVY0CMbuJynvCs/TEtD91BZ1JIyA
	vSoOUFh4sfVebjqEuEoW345oHM9OinzD9A6NehTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b012836e-c56b0c52-d4b0-4d3a-8581-19dbce76179d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a65acdceebba2194c6b3e7499da14861985e4039c1b6b8d2b83969576d3b201
Date: Wed, 29 Jun 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656516412
