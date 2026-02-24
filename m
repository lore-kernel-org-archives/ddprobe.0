Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD05241690
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771941895; cv=none; b=luuLcPhA7GvHs6Q3ycbsa60BysG7B3F5Yw3655H2QHMCbDocxlAtYXky/A12JS5+SMAyx6DDT3m4w5Md7nc3MQZjzW3RNS99+5S53KKjetMnsTdaIT1h+EE7uU3MPnykiQmAEl3hqI7m5pL7eMY8rAX6J3MftKHB/SJMzpEJtYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771941895; c=relaxed/simple;
	bh=2c+GQOsDz2QF+Ufi36lUC1liqFhz7ljxEUFjoib9MuM=;
	h=To:Subject:From:Message-Id:Date; b=g3Aq6ljwvJXwBrY57TcY7yWt/6zPStlk4a7mlToTa+yF5M54bgJu0xXgQpOayMx+hCwAoMxBT2MAvx65jZjU6oi8iLqPIB5NcknGlg5vKZMM/NfJQYLH9zeg/biuuzZ6N7JBPTSMcB1iYvFsHtLx3tZLxbcdJBhrSQRUNgCbeOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3jGT+OB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3jGT+OB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B900FC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771941894;
	bh=2c+GQOsDz2QF+Ufi36lUC1liqFhz7ljxEUFjoib9MuM=;
	h=To:Subject:From:Date:From;
	b=I3jGT+OBV+aQ7ssbbFRno6OOV43MY5a9k8a3YshqSdmH4oDVbsL9K9fJIym7AqqTM
	 jn8g2UlB8nJ478BZ0o4ss8RjchF7vZ7IorRE/1ADrh+5zhOGFmQt+n2uE4cJcpINWi
	 FEIwzqNE9S+7dNLib7TCx+ho4Vsc2FEAZpGSYzXdWJzXaAULUl+mycZxPE9iXXdslo
	 qcuoQOAd5WWIM6WpeHtg7wHw6bZ8WKkRzJyxVnHP2GNLmnr85jzcUIfjTHMqpUqKF2
	 mfTNomMn5ah0tpPflQmrbbO7sh17q0Z8slFUG5rTFAi2aHcNtxx1rCv1wMgvkNu5qj
	 vuf5k/RkfbcsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9915FE9B265
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194189361.304.12520702829285879152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669fb51d640cb20d01bcfe3d387d2061eb56d68fed60fb2908e04ddbd4532c98
Date: Tue, 24 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771941893
