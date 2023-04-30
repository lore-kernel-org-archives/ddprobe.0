Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8522923AE
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 23:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2AF73C433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 23:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682897886;
	bh=ZJR7zUNjAmvePLh0pUGxxgJU9QeuUAz/0YNswJO+jgE=;
	h=To:Subject:From:Date:From;
	b=vCffBARLB31fxy5epiDshSSYj3y1NP5prLs5+Gz9wUtj5V89/VVO+qjLVTWn1Xn2D
	 ctT8w/0TQ9DCsN7I8Em9ddJQ3N7//e/YhQHB3krKsIkn4P06Zt6xdE9J93ikVKGmZ0
	 nKkP39AkuzW+9usiMc8dKXix7HE/U5n3Fvo+hZIS9uvMAlbEB0HBGCmQniatIKMnqg
	 MCSKqeG6hH0R4McV7r/O5Yvy3qIOOsh5PotJzqkZgePPPzwWSTStuLTb67TcAhtibl
	 7szOzaNE7bfezxKwUp7VKPBJRl9lXSEJVQMhl6udgwYhz8ZQeuH186nZipoCHfY8XS
	 b8UsBqhcMsikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06D20C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 23:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168289788594.7510.2191247271024387958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc7db3f4576fdeba2daf8c92a1a103e75e841b4c02a720de53ae1a11001c5a8
Date: Sun, 30 Apr 2023 23:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682897885
