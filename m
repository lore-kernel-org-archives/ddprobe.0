Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC36923C0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72676C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667029854;
	bh=9XT5aAaQbqOGkUQruItzQb6o85BfZHvE0wU4vURxJp8=;
	h=To:Subject:From:Date:From;
	b=cPu/GmjzyxZf7pfs/Z1U5Mv4fvdNc6k/CG2ZxmFkHZxJeniztbOqZ9rVohRN705qN
	 TLvp/IfGV2YXSdGGQAaomMNXfab/W0Y3fC2Cj/st6A1mcmmpbnqY/bX/rtHufbNBb1
	 nvQxJsaS/9jx0c0fktGGmCKfOGYbKpf7dRfTswkgmsM0qbKnlny1jmO/fHNmVrLgpn
	 sYMgMNRLq9RxZUAEMvy7vwVlJl+5QaaUrW0mQpX5Izc9TxdtBytz63dpENo1B2RqL2
	 hfzxMzU+l2Rn69zAGw8SlMeTnCy9XGTZCVsAFZse43Hdv+RATzZtOXlvrbWJQKFgHW
	 pAfHIaZpG/3DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC6FC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166702985437.4443.12159588460784301005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c79df72ee0467e9146b6212226dee005f0311c2248f2cab0e16090bb2173de2
Date: Sat, 29 Oct 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667029854
