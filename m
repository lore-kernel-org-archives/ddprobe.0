Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100681851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 08:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655196779;
	h=To:Subject:From:Message-Id:Date;
	bh=/L1MqpjxOY8sHJ0M32YtctE+cYjpjpHmmPTGDBmEbpE=;
	b=g90PQA79jIkSM8HUMfLMl0SKOXUn+SzZKu6Tr3YE0QjxZIf45DLUyLgwbyA4HKg6
	mLTdShamvr5VR8aPMLvZZHeOsPziVpN3N05WepsSgWBObZeHj9vIjiMWATD1Ckfsc/L
	qXRpLKGpKFISHg/3Ea1YuWRMlXb9baqUTulc9IAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655196779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/L1MqpjxOY8sHJ0M32YtctE+cYjpjpHmmPTGDBmEbpE=;
	b=kQoKHhqe2nX9p7mc8X4w4DmsVEB7CPyT5HLaLTGkRqKfINg+OaJl6pqpYqFv5zf0
	7sCZOu3S/Da8kqbxgMTXddj5ZMcOXY7mB+1ot4UVNEudpBtCCuLZW0giDqsQnlS8peo
	ICxhtVO3QhJot9JTip08A/6d1t46AdbrRybmnf28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181616a830e-50dca91a-e69b-41ba-a27b-53b6e1b84055-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2af5bc49e0687127a495fc63a8573c3d8c5a7fe7ab6e7619506c43d49dad0d26
Date: Tue, 14 Jun 2022 08:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655196779
