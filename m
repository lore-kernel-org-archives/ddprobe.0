Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AEF20EE
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 08:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07A84C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 08:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678954206;
	bh=tbZdz1fLFqvoLQqSasVb4tE8+NhMBYqPB+Nfzn/FtG4=;
	h=To:Subject:From:Date:From;
	b=YRc3wPapFqbEhkzM4w5GbBiegSAbm0E0iU/rtvGmbrCwOYnRPZHCQfbd18YZ1/DTS
	 GUm43ewfssiyX4dRY7/M23lfEWCR+oJx1AvOYHufrKpLyqNmaCu5uqgOhzTNvkJnzX
	 Bb7ITj21w0vZDO3S5NaIx2H6Rru3GOE/cPiBAlJOE0TUzkI7HYr/HeFtQVGcrg0ogC
	 WzlFNK+XqcOi0c7Li+LdjDTyEf3zkJDxNFM0pT9HSEUh7Qxrbxa+doMKcU5S7qPZ4P
	 idoJQYtbsrZdGFUtp+yN0ZYC/C2TyG5b7GbqUsewi4AlSAxp+RXRviiscjqdY9YotJ
	 8T7LdpRSD9ycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81BBC6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 08:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167895420580.24749.6134366162601863765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4de66ca255e38a5fcc26097ceee80a4a0eabf400fe6e981b8f90bcec5c86ce
Date: Thu, 16 Mar 2023 08:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678954205
