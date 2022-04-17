Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B717A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 10:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650190978;
	h=To:Subject:From:Message-Id:Date;
	bh=0rFvYUgD0UfwQRfiec06jOTO8fXxUUGeacksA95ww40=;
	b=edJjYwsgfP8ybCGA54WVRgi/j/Hz5BM9bcZDzRLxHhEa+g4M+vnsZBOpgXdFAcXJ
	WqOWlWl2tKXJCgjuWxHtUy4UTT+sHrCJLLf/vXhquf3Lv1bt0w/RUzFvCmUwLum5SkT
	bUWGLv2g/17NvqTiqbVfS3I38hvHsEgM0DhfRmbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650190978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0rFvYUgD0UfwQRfiec06jOTO8fXxUUGeacksA95ww40=;
	b=Whb1qa4mLzHXiowB86XHJtdzL/wBdMgZ+RUP8dWivJmaQu175vLrGy8BA+DQQtgq
	L35q7s30/fVhhxBFffr+QTL+F6AwkiyyVXbUf8fYgjqch5YmzCJfNyYQN1OvJNaS6Y2
	nhbfQOEvAhE3Z/aM2VrpS6LosTtNhNCuUBa4PFOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180370c0cd0-81d79622-b628-4d73-8fb0-6bdb13929550-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86fec0912d52fbfedabfa661c361684d8fed2c5c935d7e45663dd45f546c1aae
Date: Sun, 17 Apr 2022 10:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650190978
