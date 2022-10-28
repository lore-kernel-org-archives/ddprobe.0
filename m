Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B04C71C37
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E7B1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666942854;
	bh=2NRzgmPFbJoHaXOQ5HTOq29OQHQJdKGZbbOrBYFcx28=;
	h=To:Subject:From:Date:From;
	b=PdPSLnMmr10QRXhp+9YceWo2MktT8BeeDvhA6vGYIPvQQY3CfcE2XfZkyv3Q6RKIq
	 5XQEH7+cb7rt+c6GJM6mRt6QYmQXym2eIaGrBuLwuKv53jAalaO2IyEKgx9F+fVxZH
	 JZMy0HidaLrHtgE29Tx79osQ+wpr5OrEV9a87WgdXCEKTM39p+aNP2JLsDW0uyVG1q
	 WLIMFEIQbu8scpWidgub46DpqF7cHUS/oNc0dfLldx+Vz9Q0aGZvblnCjJtSBmG7tJ
	 k44bo1o8pSYvdv/YBrbKRJCKXO7nceik9QtPsv1TGNsmbIF4D84vZgfzOxFTmufMtR
	 KXZ9bwypOLFrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B3DECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694285432.18014.807179609438056573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25907202c833d6c44ac3449cf59d83db44d0b66318f4c1a917b31fe386c10dfb
Date: Fri, 28 Oct 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666942854
