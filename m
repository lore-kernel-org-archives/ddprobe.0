Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C1733D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 19:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654717619;
	h=To:Subject:From:Message-Id:Date;
	bh=LJDmV9QI93/9s4/K7O86gtk/E6855voGHP5ri0eolJM=;
	b=JPKrubsOyjcaEylb/246zNQXCrEPRh3J92UgMjsFz34Ad1PnhRU/xi2KBTOQ8ykQ
	ZuqrtK99cJEUc+Ey7c5iKmdrYGvbpIbFVFB/QbPD/tgBn5u+82NEI1IApdlr4lhOM4d
	iXW1lu07qao6SwHyBmlqa2YivSXS7QO5xeCc4JII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654717619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LJDmV9QI93/9s4/K7O86gtk/E6855voGHP5ri0eolJM=;
	b=E3YkThoPyC4Xfay2SiM2Z+ysZpvKtuw80raSTghuIeEft7yl1DzLSZYuA8g8nVov
	o2XTa9bu/A5P8JNwE868WM7wHH9IUlEkMY+InB0/YBYzxETk6F/yhbXbTviuVQ2Fuma
	fuRyo0vohXWByQ74wRO/GfMJRX6N2bkkhzqnapEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018144db1c5f-cdc17cf4-54db-4b01-ab57-82d3539729bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76729e2f01ce2de3b25ab0ce1d7577aeb99bb03e68ed1d3efb70c14c57a21aa7
Date: Wed, 8 Jun 2022 19:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654717619
