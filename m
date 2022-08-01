Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34D57F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659368453;
	h=To:Subject:From:Message-Id:Date;
	bh=wKXol+2xytJShn3NbHKVzTfLo1GBjbxok91Yd4TxrOk=;
	b=ZSlneQzTPl2mJ+8vxisiPAQ6OgrzvBCHI+JNPqcuTqYpGjLKjaXggTWRVn22rSXz
	punmmDPqxqZl6AjC74BnKlTWg6I9Ij9mtvtHUs1zeBk9il2lGhy4HM8oEbR7CAI3XBg
	WaWth2u85WAJHk6VlPtOYy7h1x9koLasd9lNqsvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659368453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wKXol+2xytJShn3NbHKVzTfLo1GBjbxok91Yd4TxrOk=;
	b=JLgfQXDqXxpx5JOjMgyJ6zyfKBNCqUAhXrpSn+hfuj0VAYrTWFMy0BWjMD54cBcn
	V9dajT4uAjAv1RUq8GNSCsZb5I7b7cPj5sLLRqxo49wF7WcpjekC8YxctQcMQ3TEl0X
	tbTaQR9a7IItgrH8aIGzDvP8/p/Jkp3Cy6r+odpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a1131b9-ac6c9dea-86ea-4ce0-b4da-a51ec334c716-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 878a528a7a4e659d0fb1fec63894e86ad48b334c352bf16af964848389599553
Date: Mon, 1 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659368452
