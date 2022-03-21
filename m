Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF63362
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647844584;
	h=To:Subject:From:Message-Id:Date;
	bh=FgCGW1DoGh+N5HktJZsEbMEDIgxWdaIe5S/3zIQO0zE=;
	b=kjaB/vJCWKzIh0C06Ux+W9iWuGAtXmO0yiOcIT/cCmj1dpdCDOAxZcvuxuFNWiXu
	Dlclfce2GB+zvgc89Qjm8jCxzF4ur4zQkRGCshd0nxI65FdM8pHFmZq9A5ZwTzWvX3s
	bBY28XnMN3vTl5ayu3t659VoQs53TkMtD9qB9PV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647844584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FgCGW1DoGh+N5HktJZsEbMEDIgxWdaIe5S/3zIQO0zE=;
	b=JoB3aJnIb0hi4rsk6UhlC7SNnrb8RZKhXHZynEdEgyF65tiQatHEtLe3bo6Grb5t
	4F6kJAYL28BwWOTMg3eh+cziK+w5QAJRHl/6P3UrGwdzKtCHezi/0iSRqs82gJfqVKE
	msGzgPFc/6mbFNIecw13XKJcffHo0pZ5ZkoXKuaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab30ed32-6701954c-8096-45de-86c7-a9ecccbe61ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c6a004869193fd3147a7fc048fffc609d1feef8de86623aba0067737168a54a
Date: Mon, 21 Mar 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647844584
