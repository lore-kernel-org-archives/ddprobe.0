Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623F91FA5
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 07:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE059C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 07:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686555785;
	bh=cBPnsZEeGgcrDEthX53pc66v46nJIXoP54cbvBnyDkU=;
	h=To:Subject:From:Date:From;
	b=ZK3CPJUHDKc5CdRNWJfcKI0ktQj81HXjLn+8aeapghR3uw6Cl687Ke3r9JMTu1/9i
	 tBBcJxF552788EtkFCx6e05Jb5bHbg+fGh4D7yy8py7vJA8704ZJ1Fif81UZwBBYjh
	 0ZnzaAoJcKoeLe8TcPudXQP/b4aLnmhDPgfcfRGjjeyeuKQEkDf8FzvXiAO7PrKJOq
	 Y/BLP84EFlQecxNwOHavpG7O5kONQfGbPqaT2RE9ZUwxfX/K2U1HaarDeTErbPIbVJ
	 foECreA4NHeWp3dbnJy28wogNr+og+jj0W4A8AaLGb3MAGjvavKB82NQRceYV3A/5F
	 z1qK7wBiYNd3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC133C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 07:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168655578576.8864.16669416649582489043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf8f087bb1ebbe4105f956d2b77dca98c40f36d710ae4139766ab748157867b
Date: Mon, 12 Jun 2023 07:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686555785
