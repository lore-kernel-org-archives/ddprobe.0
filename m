Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0578D20F6
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxPYr/ze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E43C433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698065896;
	bh=2jxfgSOw61Q7n/eYTwB0lr0svVpQ6dqWAuyQE7OcwgY=;
	h=To:Subject:From:Date:From;
	b=sxPYr/zeG3xF7qjIQLdhe++gsTEYw9VruNB4xlwvbdPuk9KxYj6i81uKBwqWTc0CC
	 IfuB8JAVNB68H1PAJyu1UPPUG+qiciFNRn4cibZaoxRcFtd/3ooBpFoWoUp8IvphsO
	 XrqIxNn56iOZErQ1vbkl057xv9zPUgKXaQVjAS7iDXBEsKo7slVggOLsNKmkfaiOVp
	 +MENdKgVyXniz2ITDA642viZi7PoA7uMqmJLCcmAMqK3l+5iC9OleN5At3Ied0Exa9
	 AoJd7kMNrLt2E8qHZNltTt5ACurFNPDSd6zYLyrT7KagMSAfXu7+vzU0kyZYbWejvU
	 55ruWG9KHD/UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6EEC001E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169806589637.8376.4009371725361339331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d0b7cbf59fd652c1320fc5a959407272afa85cd0d34aec219a0737f9844581
Date: Mon, 23 Oct 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698065896
