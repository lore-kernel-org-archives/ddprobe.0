Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBA028ED
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF74C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668504054;
	bh=9GbIGcVv7ovMg0tOIMC9pZDaVAcdwjXROL94xWTQNv0=;
	h=To:Subject:From:Date:From;
	b=LDCiRKGgfOaUx75MEqIeuB55w7Ue11VxWLxGmr2IdZSVu65CaIO9HXgIx74o0nh8F
	 C//RJgc/gjEYEl/2VTtzKOJCkuW7Nz1uw81I71/+YkkgSmUUYbjkFIKKLQ04FJffod
	 YenpRnhG5KIHTte9nu20FF95ULgRlxBh3u0XrThSbox1svEeLcSoO90kEiGS6ID3Ng
	 PvarGql0uwyW9jhtZJ5R3n0bcy2egkjwinWZSi7rVML+rdWJuw5cEDDoVUpp1WjplS
	 YUz1WrCu8YBsDCRDmiATndUu5U9nPSEJdCSAbgymJX1ymyMn3cKhUeYiFIcFT50//w
	 rQRzGe9Ye0s6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617DBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166850405438.19705.12122572096644864096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6471a04430066b1a19c8c4b2652496c28ee9251f75eed6405bf6c002c04ba97
Date: Tue, 15 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668504054
