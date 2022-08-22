Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF20B7FA
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661170253;
	h=To:Subject:From:Message-Id:Date;
	bh=/wQ/p3X26ffH5jLFkoSVZDxh8MUEvysOMEQkJvUQiOg=;
	b=XmRuP/RT0h9NODGbtY25D3Cp96AHH6t5iNDZuK2kELu7W9JqRELX1mZrjwMAHhJd
	d4Zd7rhSHgoawwBdujKgtTp2CH9/fDQwvx5UeBUTTHOLr4l512lFv3Dme5lfg9wzl3d
	ubmoiQueRmqOlz8vNhSMHEYoGYBlxfLodApYs9M8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661170253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/wQ/p3X26ffH5jLFkoSVZDxh8MUEvysOMEQkJvUQiOg=;
	b=idLp4/ns8BSIgO2BbbMFvlTw6kWjemEbFD84/aotIJbl2DcT1Owe6TjtumTvc7N7
	tOrIoKyzAZskJ6rekqEgAFGq3BUcxYmIHF3Uv6lHi8dduM/UrMlYBEK2NOPvW0WnVSi
	M9LHHEyEr1q+yLdzVjh/JglSZ63XGEQm8LNWF/cE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5767af1-96d0b03c-4ffe-495e-a689-17d7061d8bc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fca56f2bd7337087db487a383a6a12d8835803db4b0996e83a829c3c103414bf
Date: Mon, 22 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661170252
