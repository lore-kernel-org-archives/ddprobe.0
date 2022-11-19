Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC341368
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CBE7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668850854;
	bh=5g9zC5ad81RwD3KM/Pd4s2mU1w72tIWe2fGOOdCD87c=;
	h=To:Subject:From:Date:From;
	b=D/9oOc+h3s0jjQDo+55eoK3XMK6dMTL4l4uQ7qLlZUlQJNx0O0rt6WBukUssR/C3r
	 RWSmE6mWiv4Iwg4Z2SwcCaUgWrS5kj/HV4Ig/TWfvWYPEk8VYHjb8kKC5QD1HfLtSW
	 VzaRwsdL2fXD76QxPPT9dJ0GZINPhfsKtFEvycF/qPI+iCfyzSXQgJmqya3snfUgrr
	 kBlYFVD+ln6jAssrS8BHZKs1dc7rcc2A2V2NYibDMMW8QIs4eWdYp0z9OyOtQWTvqz
	 I8jilODNmkxOaz/9cmqaRkBGIlwQme6bXrYBwgB9qHC7Hu5g2JhtTCZrYlRgJOuGY6
	 a1j3Vhr3BgpyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D248C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885085443.28813.9349536990604849705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b56984ea39a79ff51eb36c96190599c63721d8ab03ec999a514109eac07dd10
Date: Sat, 19 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668850854
