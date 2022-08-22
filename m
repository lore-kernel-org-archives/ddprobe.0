Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC10320F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661194252;
	h=To:Subject:From:Message-Id:Date;
	bh=e8piQA4CAlj6kGOq3Dl2zK/rfcoREp644yzRyd3jHb8=;
	b=fltAMqYNOLk+HsiEQyosvXh/Q1rGlieLqQ6V/nxGM7c6orvmyoHxnPQcTRrlckr/
	gjfBUH5oqoMZ+cRHbAm4BP0oN6xYBr4z+q6ITs7CtxOsgFeIaQixCzSR+aEkYuck2nt
	Xr7mnvfxQLSJWYOmT5szpNIJC7jWU9CNS+pfTSp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661194252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e8piQA4CAlj6kGOq3Dl2zK/rfcoREp644yzRyd3jHb8=;
	b=S73cRnqMaQASzLoaEFDB9xMwcQvtkb0s63xeejnd/uiVx/uewHw0PBgncgRQVt1c
	3nPFUlUlutWl0q0kibLnZ17AdwQyFcZDhBzV4bdjT7WS3oWcAtSB1xGuxrryBAeXeUt
	bXz5z9km+FrwDpfRTD69/EPoh246pW+PdkJB9w9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c6e4b109-d14ccbae-a653-4fc6-b61a-3ab34340a7f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d83530a8cc38de2cde2ce656aa319eebafe51f1bc7b11900dce428a1252838a
Date: Mon, 22 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661194252
