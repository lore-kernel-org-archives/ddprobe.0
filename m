Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E353E620
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658812012;
	h=To:Subject:From:Message-Id:Date;
	bh=nzf7xOnYa/P9yDTOcarOJszHfiAShueeWkAMfUq6a20=;
	b=EBGKluXLG8JPSXGy600Cy82ULQrC9hnBisBp/TuIVnzAxGzwmK//TTqtyIaHvqje
	KV5o+H4ZYx8U2nNVXOFws+R6cQQs226wPgfkLO9bM3Vb/BoviswzfVHIZOMPZLqAUft
	TQW2T80KohOxeRhXuBjT4QXMTjB9v9R/ilzOOCvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658812012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nzf7xOnYa/P9yDTOcarOJszHfiAShueeWkAMfUq6a20=;
	b=NSArr26xhmoIuh6mpjezUj1vuW0m9muQgP/9VpJiAFcmk18GhF8uQizkIloh5mpQ
	ic++RZpNLljW/e7Eb5U4zjNVk1xo57DrTwUqITOHxNsiYJvZgqTajdc4QX2KnsUZg2S
	fSLvQlkndcOD79hmKgyBfIK2eI49MRphchL//ybQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238e696d5-bcc0a393-a7a7-4fa9-8d30-655a2077cfc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a14b2822509f23c236127d908bcd1ca3496ce5aa01a0185a18c5da042d8bb26d
Date: Tue, 26 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658812012
