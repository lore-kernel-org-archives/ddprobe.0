Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9AC2901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 14:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650638458;
	h=To:Subject:From:Message-Id:Date;
	bh=ej5ElsCZKkSDP3hQvGTnLUmdMkNhl1tQimFKasgbqAI=;
	b=L9YACTxYmFCn4kY4YIyFHih35pFAYDiwACSmCzXj8EzLn8KeFFCj7mBbRH9XuJul
	t6Xq7A26aZmA9+SOV2HTpDVZWr+PFwbnn6inbxfN4TEPERkEPDfC3PFo89jCOQ02sUA
	wfebM8MnMVUko3ezF9XJ/W6DO70aMy9pgWBOHt9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650638458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ej5ElsCZKkSDP3hQvGTnLUmdMkNhl1tQimFKasgbqAI=;
	b=Havf1rHccA298vAOV5+oQSJ1IpDDd1XPI0KMfxBdkJ1zky407KSu3/BdgopC2Vqa
	1Ue8PTyY/AwZ5D45k0XFB40pOURFW2fPk2gmDnTl0OB6JI9Eo724G1sY4qm9nKMrO6n
	yzRXwHajxlmUaL+V1ZGH4umymuMxd1Iqr3gCifr0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051b80d96-d3e31543-f8a1-4848-97f5-47c3b312bbda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96051dfacf88b205dbb7f3e811848b4aab243c5cec4cc94742ec6e7b282a6184
Date: Fri, 22 Apr 2022 14:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650638458
