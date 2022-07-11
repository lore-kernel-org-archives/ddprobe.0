Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5781FB7
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657526212;
	h=To:Subject:From:Message-Id:Date;
	bh=TO0CUspQB3XL8JA441mD0OPWhU3IaTT2c//k53+BSbA=;
	b=BE3uWEmPgQ7lcbz6fP2h7D2QQkXXEu7eLmU4i8x+oMr5wzUDDQzfQCOEm7hoqs0+
	g7XIYnAzX8aqDpFqp+qMhDfoJqwaBnDArU9tFe8EkaU4PCeQ7A1wAsIhZ/0TK3cn84m
	lJfj5ZnHEma1C7bPtMYXsj7Di0GqGUyqT97+FZqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657526212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TO0CUspQB3XL8JA441mD0OPWhU3IaTT2c//k53+BSbA=;
	b=ck3ZpaGSCuBHPtbLi1iwo3wVG0DeE598S0cJKg+5mdJz/s7xhwB5zkU6zE70MTcc
	WPnT+1veeEGLhOMT5EO2S+S4GjdIfiKgafHMGSgpIXUHCRnlFwamT227KQAZcwtl8Ko
	5LgMqkQezOBUpWk3hRaBWJ3ymbVzL/mwqT0TgqeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec42d6a0-52a88979-4287-475e-b399-5d7c86cd1ac4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48d1bd1690a29377902158e6e18d84776ec96d5f788f13ef7cdecd5d32863f20
Date: Mon, 11 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657526212
