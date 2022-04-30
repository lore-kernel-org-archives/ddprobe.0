Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7041852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 05:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651297738;
	h=To:Subject:From:Message-Id:Date;
	bh=fck0K2WXjhOb0X7I+QbmkvK046r7T8CtKOj4+ZNft8o=;
	b=fSnni61UpGdhIFzXJqr1gzKy/Dqmfqtheg1ROD6cXSzH6u2yQpXi+tSfK5sYdMVW
	RHLorY7MfDyTxVQX5mNwY8IqTjGCWbvldFXKgwBhk/u7uPCFuGvOQCXoesFZ6mKFY81
	B00IU/+R9eyqTw7WPAp8+WTnNYxvwBDNzGtP+n6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651297738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fck0K2WXjhOb0X7I+QbmkvK046r7T8CtKOj4+ZNft8o=;
	b=ZZ/Bmfz8VCVEGWsk/KPQCqjwuaJ4AmiAmOio0Cq1cAp4FrUsTr1W6QPDeLjfzC7p
	CKzD6fYG8vkKkVOby4uLC/YHeAHtCn3y0WKmXr9VYAK5d4TZ2RFS0mvLoxmSkv8rozJ
	8xBK8FIz47sNWveV7vTVLY4RYiqQIyX8veY/n3eA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807903de31-a949eec5-384a-49e1-8511-fcbb0b36ac2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80e5dd6b1ac14a93d5b5517bcceaa064fdf7ded519ea1bf37e626e8aa51262a8
Date: Sat, 30 Apr 2022 05:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651297738
