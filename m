Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5AA57E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646977585;
	h=To:Subject:From:Message-Id:Date;
	bh=yf3T/1KExGSb3BMFIZpMJs7zPW+WlApuJl/f8+2b57E=;
	b=gIswyZ+2HRsaf8oPobI+JM/SovsFdK2dNoEIh00z0LGiMaiYr+7KV98be6zZjVdi
	bt5RF4DBr7hADzqo3RNejsonX+Kc/vZaiCxGbUCxHSPUZe7T1sng8XgJr6XOW5SBL0c
	b9TG8a1EW1yzZzaVq2mbz3KTok11qHSRSLtSCi+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646977585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yf3T/1KExGSb3BMFIZpMJs7zPW+WlApuJl/f8+2b57E=;
	b=IdT2VoIYTAZlKx/t58rwJZSNzX8HzN8Z5ueXX4FMQj7nGYEDY6JnQBtCBati6PC2
	P179m/tHkrSxDhTWmZl9xM67GJtnuKwooOpSZStE025DqgN4NuMQTVE2GM+oPfomMaS
	RaJf8wvkxLKD5OG/G8+5WIkptIC74OXddP7Tcrbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77838e78-714df296-87df-4b8a-87ac-62aca0f05248-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6200eed28de1e44aa836e5c09ead3906ab131c67200ba011a8eabb187719362
Date: Fri, 11 Mar 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646977584
