Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CE61FAD
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646560284;
	h=To:Subject:From:Message-Id:Date;
	bh=JQqBGp96mTrOSrLwT7qK7u/0aOKiALNIKAqu4t7gdI8=;
	b=Jcz2bK0Bv0St7bnfOYII0yL/tC5s8mNQfSaYm8aSGVOKvNYydSQ552QkE9dmVjII
	WZOgqM8+dEKok9DQC9aRRS6fjExFi8vtqsh6M6rYoPoXHa4dCncfT+9sb1qW2fZkpgI
	r20YjYUBS9004wBNA4ZEipsooThMdNbSs4wjKP+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646560284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JQqBGp96mTrOSrLwT7qK7u/0aOKiALNIKAqu4t7gdI8=;
	b=UTg+Y6E3GuCI8zu5xLoUXiXMPTPOnut92KWV4HD9w2uxdyJQ3LTAy1eX5N8JHXUe
	CJ3E5DZkcO3d6HVU7lGxZPSdGH/HJe9M1sPanPXHl/00LrCdr+sDBUSrJRsvzJnWv8q
	mUSQ51x8hycLgLYiuRsJJeBqkC9oczcIg5vZUDfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ea41051-ddd21491-a1f5-436c-bd98-2d81dfb64d52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01617aff8c9b9d6cda9742407058c1e01de5a2bde27d62e9c60d80f31bb78fc3
Date: Sun, 6 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646560284
