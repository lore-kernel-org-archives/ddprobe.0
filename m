Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5600F4C68
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645216285;
	h=To:Subject:From:Message-Id:Date;
	bh=/AnDd5i9sv5QRlqEC4A17+MiJSHhCcUWneZQ5NJX5h0=;
	b=d7Zr+d+b+YMbW9SwbIZzlEtUukJQLHP79Pe1LkgxGsOWqqtMqwYj7Mj9XQRXyg3a
	Pap+iPgxsdGg0aEaoVYh5OO+EwE3z7L1tKOEZn0SUQDe5kjJs3v4ex8jTKvcNyD/NWp
	k8VCpFyp7/6h5zhHDoNOMk16DTAfVbFJAC2paGlo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645216285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/AnDd5i9sv5QRlqEC4A17+MiJSHhCcUWneZQ5NJX5h0=;
	b=KH3Xp0InGaEnXVr1rw1jEr3zaW7HbW35kSMjsCVVQS669UIG5LE52OKMWGnJObge
	1nE2RgxgWM3Zf1brYZYOkSKUeEe6giS6XA3AbSuKByUtqWQyWg729CIKlp/YYdju6FK
	EySkeayA+Ik5d6zEWpfUdCK54N1S90Tgiri6Gw9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e8840c4-2027795c-a4ca-4ffe-a90a-3d4b3ef6acc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52c624380afc9dd291f62aa17066ac7d19ba895d99cc1d6091b6f25b69604dfa
Date: Fri, 18 Feb 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645216284
