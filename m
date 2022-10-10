Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADEF623C0
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B1CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665391853;
	bh=7DlrimunQBQ7OlW3Y4JfAFpBpKaPjojJOh8JxfBNpB8=;
	h=To:Subject:From:Date:From;
	b=thWtYUz7KiTVbo+5Qkd28liLgltpSAyJhhaUjUVOvxb6WQimeInzC3IRKSPAjCLF+
	 0q+DYl6viKfHR9WvFQ9Fw0IJ0vD8EESX5RgLB3cEXCv7RITs871Mi6+rwQJVawEpKu
	 /ZHwYiSi2/NOvEKM4zKjmZJbf/mUgNfF8TLVevthgafM0A9jPF6qP4kIhaximx5sLl
	 GXWNHZ/RcIHwfhIn7AioG/g2oKb9D888iBhEA4B3CYH7QRrea8sPwrBaGHLUsIotyO
	 Kun7Ms54gzdtXOG1h+PKgt5AFr9wmyKG5WHu2yoYydPf553Fb56yL8vrkcrtuN7kh4
	 MkNkrNXa0XUqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51502C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539185332.4572.1039569223422962016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f4a775e5d1847365cc20150063a07eb6e223d692eec30127259610cb57d298
Date: Mon, 10 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665391853
