Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1881B7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 13:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651238098;
	h=To:Subject:From:Message-Id:Date;
	bh=J2ZU3/EixxovW9uzR/aVf7q8pyqo1vutg7R5M367Tjc=;
	b=BlU9sZ4SbzqOdS5pWSFi2h+5vZfHfXJjaWgYt3p4ruX9SOJQO+8iqwnRMoKdMxQ/
	hoVmL7HnHxVN0hZRLYiuxOJHlkRK5BQ8WHPAXN/meWLoHEyouuPxMSIR1PbOd6bF7ss
	/we4LwHasUuilC5c+oDu26cuok/1aoW/ZtSKr7Dw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651238098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J2ZU3/EixxovW9uzR/aVf7q8pyqo1vutg7R5M367Tjc=;
	b=LkdnCCeVwmLA1MyXguFZc2HycDltM16T35a+AMi+1GGF8ak9KyLo7VaVFrnzMo6K
	W2j7hNi69+P+V4WzrN20zUOp/B8W78wvDKGdTeEv80xeNHLvQ2oiuzOQZmcE2zAcN9K
	+3kUxblhHv/4u31vZmCaJpYk7pIZnpnx1Vwc2l8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807575d58b-55009984-cc29-4756-8ec5-30d658e959b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 008eb27adee7d25dca67049e2994b93f54aee9f04b909d3f5f32e890433d91ad
Date: Fri, 29 Apr 2022 13:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651238098
