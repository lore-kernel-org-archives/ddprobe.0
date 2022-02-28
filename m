Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EDF7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646062285;
	h=To:Subject:From:Message-Id:Date;
	bh=ujs0I3MJc/ixzK4h38QMuIYww82UonrcWBJAOQT09I8=;
	b=HI5/jjZ1jO2X8sLeJVSD4A3cu+2VBkBj0CKcrJblYlz/9yVd4N8rQSe+Atiq62Jw
	le9niYYjsxkf/0P7fsbw3Afu/j8un7w8GbkrcldhhVxrMqnVix3of9MXj+Dyks+pXw0
	wqAxIjhMFDXzf+gvTaJ2BrFmFllor95NjlWL4Ij4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646062285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ujs0I3MJc/ixzK4h38QMuIYww82UonrcWBJAOQT09I8=;
	b=SzkzS7VXutMwtFM1jpR0Gkk0OB+A/GBl0RblLEWRaWnhl6fz6gDr8h7U5tJsMsyd
	CN8i0gldSI6PXWFVZG5nKRnBRQ4RbtN6nAp62466Uc/D5UzMLl7LC+Q2HL8iORrKCzZ
	AM/bQ0O6KXtYZryrfdZgkPTdFmjNlMkiRbL+D9fY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40f52fdc-e8881169-a6ba-4bba-a2c5-e140047db69d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cbd51ec6a34b4ca62688bf5ca6a4254ca7eb542e8852c879daf95747cca3b9b
Date: Mon, 28 Feb 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646062284
