Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CE136B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 04:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651033978;
	h=To:Subject:From:Message-Id:Date;
	bh=Qt1tDQSU8OSgsXZmKfS62EzsANvWTw3EH5lxS2jcEfE=;
	b=YfAJSz2pn7GpZ/iddClJy7RN/osppjM6W2kuWL2v+N9WrCzncIYdikFkiZnYjhAJ
	hn25AZjVpupCtcLgETmDnTitIjTxREPjrMhClNB3f9n/v6fQ716TS+rUBiKddIcTskP
	6Rne6Gnpilpoy8gMM8lUrZee1fXSnfCaIsuM6fiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651033978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qt1tDQSU8OSgsXZmKfS62EzsANvWTw3EH5lxS2jcEfE=;
	b=KxlTBW3PY1LAoIq95dDsyrJD8zW9hJVvKHQtJnHjxFXIslqh426NNYafkQJik9Pb
	fbdD9IiEac0XqVGaWsLzU8PsihCkuwIhp0Y7PF8Ju3KVHOhJVL5w83Hoxg9aAtoko/H
	gAH9Yh/SepWIXS38CieqGY356UKSz0ZYrdVRzqRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180694b359f-40855ddc-2e42-49a2-bf2f-1279521f9685-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5866e2cec0e56c68b1c9cc89546a303f16b3b314802fa5dadd1fa71b18f0e9f7
Date: Wed, 27 Apr 2022 04:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651033978
