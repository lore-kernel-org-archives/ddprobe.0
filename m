Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54771105
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8516AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672368687;
	bh=fBM+AeqTJ44R1vgsDl0EgrP18eRyC3Jk1VY+EA4poxY=;
	h=To:Subject:From:Date:From;
	b=VMsn9ryGWYX3yMUpixrNa5+h1MnmBoN05TbaF/F0cA59i8/ZevtR3TTZxmz7iYcRf
	 UHq+fTL4Pi0ChrdjmaMTsf/1aC9vltoktI/1epYGf9/75ra2pxn//sNTadhfRy5uvB
	 RWq4nteZ85p/qhxFzVri+H/9YecwJfrazp8UDCb3oj445rMVOx8JG7UNwqXHUIoVVe
	 R20Fg5x/+n0y9lxUP9hX9PzVw0firyXSrkMaIKJQHIh9eIfs3FMX4oGBCXSbcgLksB
	 8jNz2ZR1hJQMIeaMAlGZiLfedbIo7wbBgKhbx5uO6r1/RgamZyNCU8o6gjY8taoIWD
	 TwhIkxGWxH8/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65984C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236868739.2678.16764430326804353635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b787868117a86a6d3159678e95a91536096eed74458883cad2fa41be700412e
Date: Fri, 30 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672368687
