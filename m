Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6D07C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656253012;
	h=To:Subject:From:Message-Id:Date;
	bh=GSwuHaPaZapZ/xmBiI30w8VKM828LH8cC9mo8l6Ji7k=;
	b=jwX/MfTlOj81ZaTiR0ZY0q09hgpkWf3l0FZEAJt9s/dqKlujY2tAn7x3fLIlCCGJ
	/3YAazg3R9ypMYWAh5ADgVp7gH6hSCpEny8Pf5rqo8BAwNk/JRU0eSTqpFV6IBYUzRc
	SXLwXCHOKR5AQzeD4DcY+qq9aXoQM1Y9iPBTvnp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656253012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GSwuHaPaZapZ/xmBiI30w8VKM828LH8cC9mo8l6Ji7k=;
	b=A5n05yZHBkzchDpiYnB7l9zNBWIxE4RIEQs3auws4yPLd2GqRKdVN9o1bXJ3SXoN
	X8tfVMUvnhWq4gB8tok1mWLaSJNqo1RSb0znJhyTwRChho88SRb2lxPQIUSEskZA/No
	f4XuC/Qp0tXI5GnK9LNK+61PmAcia/D22pd6TQVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a05f5979-3dab3751-26f2-41b3-b45f-c455215d5e92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4e20ca81661381d37f7052497a8d4169638d60509183a9eddc6adf270fc4aa4
Date: Sun, 26 Jun 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656253012
