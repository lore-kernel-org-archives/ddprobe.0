Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE2C2F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 17:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647536785;
	h=To:Subject:From:Message-Id:Date;
	bh=/i6AjlmzvXIe6I1INrI7b8VT/JVkW+B561F7r3k2AiA=;
	b=mleD7YjRyLM8ZwvV5kG1AFc2Ok+XtpmWCZs8/l1VfVqILVlKhGGRTkQ296fMv2DA
	4Ramr6rmPMKIDhVJ/lmcP4UHbN3N9sJoodFwN0AEeJ6OzjiudFidKm6FcFckvqxM5Pz
	M6cs0v76wfYd5mErFtmFJieUDE5+YUOiVHUYVmVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647536785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/i6AjlmzvXIe6I1INrI7b8VT/JVkW+B561F7r3k2AiA=;
	b=kQSwoCZVwSJNWcZMTngZx0OSu1526FUudlNHZERJdJGZpLHctAwDHrKQBR8G0gcc
	AsMHwXZIsu5RXXh1uOGsfnXn5hxHBymYH2spgORw2XRvtC113MoxJfSj21iDO467uai
	T0oHGuUXk9ZHgKNPDS+/4sOqq7LVhH3bOqARMoKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98d84646-4e32b905-b920-40e7-9061-5b585dffaba7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d53b0898e88b29959c113ad32f68766defaa1e8ea25edd663f59f1d92d7cae5
Date: Thu, 17 Mar 2022 17:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647536784
