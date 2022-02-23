Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69629C8A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645629984;
	h=To:Subject:From:Message-Id:Date;
	bh=jjBIiMJeUWwrUzh7J1KXqkhn8WAj30Zk9bKOEyhgluU=;
	b=cgrUiIGsWfNdIDvglN1D/kNwW6201KesboeYJ9ahMUoLoFCmb3Ol1skuhfk9wPYc
	30e0+BqKKMV5+pAUY1q+Pkt0muOXPXBzkE7m++sU+/hKY/D5pjlgVrpXBpntujiGI8V
	iVgiaX+nM5wWLezkijyyzfibGHkXVs2kVA3+uo84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645629984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jjBIiMJeUWwrUzh7J1KXqkhn8WAj30Zk9bKOEyhgluU=;
	b=PssAxRPzRx5CE5lPJdONeoE1HXTSlBZ1MvqBMP9m9z9HQFNPj/hW5gg98475bKQW
	rlQhAR3qvdvHJx6SOpQWfj7H2zsVmWZG7Tukv76c0fIHgcxSpfnEA1CUZIuJUp3oIPt
	nPL9i3M1REb1osY4mu6JziyKhfhQskfp7c4EOzHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2730d002-5eb32f06-21e1-4a94-94aa-ae477f6bbbe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 490d980987c1ab750ee1dc17166e64fefb1c50e67329e81ae1bbbecb5131d887
Date: Wed, 23 Feb 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645629984
