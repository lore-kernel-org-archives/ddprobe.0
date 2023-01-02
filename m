Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49FD320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7950CC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672663887;
	bh=Nux+iTCfWFPOwq2jvyvSlaMPKTAwY8cqE+TaoRC6QIc=;
	h=To:Subject:From:Date:From;
	b=EGWbFOhi3bKxgarw6qlWfB+rgidQMA800gsrozyb5WGHR2GFnpnaLmGsMfReazZOC
	 sYjluWEO7m9nC8SGHBQJCot9ERz1c0KtpOoBO5IlBQl1JmReBlli2wj0wgwMJ0c/J0
	 yhdDJ7yY4b87Qjz07f2Deyr9G+UwC/UYzbewL60rx5PWNqi3h28Lg/FyOY1DpR9edC
	 upuGjNS7pTdk7zHJqBZ+pGdp5Xt3PCKeZv5FSiEk5Ubp9hq8bKBpLmD4hcmI3pIOFp
	 r/Z4Q/yCe4JIEOqRfp+F5qDUQvKZsDYqNDnOtpukIOWQuStfzDemZIAyXGxHOlgl6r
	 U1OBYKz2JBkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618EEC4708E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266388739.28560.16945754828928155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e82f325eaf2f173d7f38f8243c20f244c83971fa21d5109ae8621cc54f32e5
Date: Mon, 02 Jan 2023 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672663887
