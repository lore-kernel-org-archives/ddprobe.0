Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDB5182
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646937984;
	h=To:Subject:From:Message-Id:Date;
	bh=DLkNJCHz3QaU9gnbLKZBW1VOv2vn6B8wM41YrC56nuI=;
	b=ExWhtHaiE2P4LmMPPxMOgB5/NM1vHOvYVV7Q0J493kOMdF5Su1ymmglTwb9cFh7l
	9MCm0nMx6//KaBf40PSOsx5LDoc60YT8XvtRYHv7z8HfOF7EzP3GSKOWjua1RGIR0EU
	QY8Llgj4GypGWhVDWdHzAbN+qr4C/k9kkH/zvDMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646937984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DLkNJCHz3QaU9gnbLKZBW1VOv2vn6B8wM41YrC56nuI=;
	b=HTN6Wk4c+iPCm0EtWQ3w+dqPTljtHpgmdV76hL8g8MCo79Q75pA99+6W9S5hx4FC
	vM5tqL77BWRlTU4Y04sdwBlYRVioOirkDEqyVzsVHN2BSfkSuahNtlVU32rVjMXZOkS
	854J5XHtvETFBdRAOchG/yAmyjO8KOb4sNYcHWIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75274ef7-a40bb47c-aaa8-4dd7-80f7-f06384f687c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b0364474bed8d68b53460af8e34f519a6af2bc859cd9a7af48ea422528319b8
Date: Thu, 10 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646937984
