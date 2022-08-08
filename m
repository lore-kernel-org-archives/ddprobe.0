Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E18F23BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659945652;
	h=To:Subject:From:Message-Id:Date;
	bh=kqUpuyj7nT67qjxNGctBnzIaNP7TrUisnY3Ue6dWsfc=;
	b=ez4TAYSoreS/nGz/D9dtbMo9+MqjFwF4dn1Q44P/K9IrMCrWv6jLM4DbJ7MxaSZj
	3SKgl1odIWnwhoIR9omzl+SbhCjXYdAldj6htbTYlmwd8fQm/rCZKoi/5VZYnvp3rQi
	Pc1HtmCCKp9h8bO5KaO9Ww0X7iIvfCbz0JvkUfsY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659945652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kqUpuyj7nT67qjxNGctBnzIaNP7TrUisnY3Ue6dWsfc=;
	b=LT7oPBF2ig6SGkjtGLKmu5ymjWFZWaNEH7WSRNZIq2iUmgke+DlFtnyXfnjNQXDf
	7fNbFpMZZFX/YnnCQaYVgzjU+7tGgsAP+LaeM4XlY9+Jy3BBmSeoeWOVLEzX6fmi3Il
	1pzd69U5nWfB9wTfdVdHA2604zdok5JPtHFrVU0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c78915e-552ce2cb-fe1f-47e3-816e-eae6a2b1f6cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3e531527ea0125dbae398b72a9879b275d54fca03ac5fe780889f64d5dd8d93
Date: Mon, 8 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659945652
