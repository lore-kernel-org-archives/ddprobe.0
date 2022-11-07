Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE0828E8
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F2F8C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667813454;
	bh=IQQXYO6hSyvFORuzyBdt8be9jMMZ5WlD94uJyAnnJRI=;
	h=To:Subject:From:Date:From;
	b=Urhblp5ToeSOo5VfvQBqVa7KI7KGWRSLdzOT++T2MJBhckhOS/QcmRg8PYvYCjnAP
	 9d1oZNAff9dPhuLE/tT0KtVFXutsb/HdgBXd7/AIlu49H9KHux/ravgQ+rXwJ1f+G+
	 cf5s83YAE+Is4axMqncOmhS4rZ6LWXvo1Ar1kOygikBT3h8hgHlWsy5qUFwfkJYt0C
	 lt5f+LgySzFqyHzqaPhOPtAt5sy6RHIUeFucdsT8MYyduwXjNoJrxECxw7e+nf55B8
	 7mt3GVjQLUMTFRiVdmF3HvWi/UymHZkz55pJ9X1KQuBqzlEJJ3S418h1oYgksIgcW1
	 Ii4vnTeoiHEwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55346C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166781345434.32750.18360590075763833596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d79d4c7f88d742920f225ee996a5f29df111df7921661163be93220dcadb98
Date: Mon, 07 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667813454
