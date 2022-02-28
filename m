Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6795715C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646073984;
	h=To:Subject:From:Message-Id:Date;
	bh=0LxHNabpBE9XMWF7EN8JcTB24XpJycMD5c8XU7/7Qhg=;
	b=MjXmPJq1BBMo7Xw9ycxzKZCOWtUZbGaqoNF4RjS8Yf41RJlKXtdXkP/f24/4rdMB
	EZxUiKcAnNF2dtVFeLkILDyjT/FmH+M0kyBN9bdwv7JdU5JRqBhKIGICE461V6W7rN2
	KB16oG1fZy3OLXxpGnl/GkWjPJgJgOSH/FBcdH2I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646073984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0LxHNabpBE9XMWF7EN8JcTB24XpJycMD5c8XU7/7Qhg=;
	b=ZFJBXhatlz3jnvezR9qmbpt90Pk+gfEDs+2GhprhZ6vaa9QQUqZU7i0TctCQeL/e
	9Mr2kqhXaQwqv6cfEcoVXidnvPaNUBVpr0rXbHk/zLkyfzJJJYJA8v3VkVQyTRgWI8b
	JQWwir3er7S8suZ0xwg+U9aWaMafeFQlxfA9jIbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41a7b717-89c49d60-b5a2-4fea-927d-d7727b2e2cf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 977ed87b51de5a995bea869dcc08bba3cb8c743143aba99449c51029a3849431
Date: Mon, 28 Feb 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646073984
