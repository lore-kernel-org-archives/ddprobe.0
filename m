Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BB77A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646721984;
	h=To:Subject:From:Message-Id:Date;
	bh=TDdOi0v9TjIadp8NOadiYxwkmqL/BhkaCG7FfHNdOUw=;
	b=E0DkaksSnIAGr/ytc/QsV2U3VqPaPaFMAugHwr2z6V5H3QbG1uWgz9UejdIp2fYX
	xXFSpok1+e0rrB3f6BO9J9Ut/oEgfN52DAHv3teQkPaBXnJSeQKyLgWZCPBfSEIEORg
	bUAhbZ+m+jfAiowpg4FWVAve5D1bRtEZ9XGnn0Mo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646721984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TDdOi0v9TjIadp8NOadiYxwkmqL/BhkaCG7FfHNdOUw=;
	b=iOQuTYr3gIvtJpF0GqBMFnxZ/W/kK51PDSSlQZu/7pSw3AeXImbSycouXEYhKrQv
	nSckf8+9hdRnF5D7x7IX29U4ndLdgGh/qyb8bEk6Q8SYjzf977jN4U/coMFNDTZ/1ef
	OXIKfjUZPKqOFkQETGVzEHgNvhdVF3RUZ/UGwjBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6847693a-c2a9fe95-b6a5-42db-af45-1fd809127575-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f33d93be7c8de6ab42896d9e458c3200d9fbad183aabc01790d7478b69320a2
Date: Tue, 8 Mar 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646721984
