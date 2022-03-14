Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE11186F
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647265284;
	h=To:Subject:From:Message-Id:Date;
	bh=Lmqj1Wf9WSoURy/DPxCpb/pYz5nz1KHq79rURaKWUaY=;
	b=auKgjJ9dwmdSrU0a7trUieqhEVvREWsu3Ps7bgoxSo1notxT2/fFVwYnlhp5InlF
	28XjDYnnYJAyiTkY8AR6MN5TzRJsS24Y8bbRbN9mYKk7s/YZrGXfcDa/rB7fvj1gyZC
	DJaxlOYxqEmlBattrgzjQ7fHKXrXdRBqkrrqxs6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647265284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lmqj1Wf9WSoURy/DPxCpb/pYz5nz1KHq79rURaKWUaY=;
	b=Nd944bZ/+JMwUU7v0vMq0+gwo8RahELFOllniLN827GvZ7OLQ5h7betfdVfmF8sX
	3jX9XD7S6EEIgf1PJyqoD7nJGiwMmaSJ6XXRe9Rx+dQpKi13YdU8j1ulXKjhgcAoCXR
	lRjV3Mnlg12CCOdB1YW45FfYhMUL6ZXzXbZXiKDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88a98272-25d1b315-7c61-427d-8ed7-c5dc826b0e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a24ab62185a9d77d6780745a8fc7885fb9c4836daf15fe89cece0b04565d325c
Date: Mon, 14 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647265284
