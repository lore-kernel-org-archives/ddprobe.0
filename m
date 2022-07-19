Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4767F10ED
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658199412;
	h=To:Subject:From:Message-Id:Date;
	bh=NCF/eSARU/LAYu++bDBx9tqDElp5DgSEp+tauG4jQ0k=;
	b=OIlDGKrYc3/EGMCO3RSpbSjbI4a+jh4LGmj00Os712Du/azAJCwOg2A8JsLX8HHw
	KTqEjZR7lChbpzmIoztEtMzqw8u+f6SciTuxSB0s7ma1xC/fPMQfQZFCoQQ9Bves7et
	MxtgC1Bk/XQA8YuSWbZ9BWoTDOIiEeo0BJVofJ9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658199412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NCF/eSARU/LAYu++bDBx9tqDElp5DgSEp+tauG4jQ0k=;
	b=OCgD0m7Rkr6zw/Z/FeeASdhIASu4Z2ZU8WUb8pO6VxJdTueybSnmJF5A992PpUnT
	yZkB6g+5JR3FX5SigywbSKdz4DhCUMyljPIfnNRjQmyX8vjV5cEVqHZRL0v/VxVbqte
	rqGefu41UFR69rvMzCucn4clReep6k7ITHj6ONxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018214630e5e-3490d792-7265-4c12-bcb0-369993757d4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a5adea31e111fc89d0f9e67c93fd140e60d7b1fb44c7fcb8c8b8648f975a85b
Date: Tue, 19 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658199412
