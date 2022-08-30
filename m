Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27E6374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D4ABC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661836253;
	bh=kdYUh8icpsn1VJV0MnZ0CnzEX7PKEuo9Z8vYK/RHTKU=;
	h=To:Subject:From:Date:From;
	b=iqjr+HZFIvANv7nRjTClHnQbPNJ+wzKVwa6MWQ33CzR44T92m7C+f0zz41OCA0q2w
	 ug5Y8KgsfkE7fh4/oyB530hnEADSxpYvpj3/PdtZa1UoLzPG3nzcQIP2P5j+ixTiys
	 Hqw0kvIqcsZEGQp/x7RXWtFAPUv8Ug8kjH6ctAsPMBOmeaCZGN21waF2UYf3Fb0qHA
	 lKApDRC03CqTs2GMwomu9Zivx5kLEyxDmJX2cr+tVD6zPn0BjPgYaWCAg6Z/cPmeVS
	 8zbQXYAqRIoEPyXhqWYuw5NuBU6dJ3Ovb5oWWDwHjDIcWLG/DQfAJXTJC6/EJ9mUmY
	 sRA8Dhx8QYDNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B11DECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183625334.8955.13665461862756808375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835c10e7e34faeb27036a844f10296cd0fb166a2f71dca189c7e64f8326c6a9a
Date: Tue, 30 Aug 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661836253
