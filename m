Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313961CEEBB
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734459354; cv=none; b=YAeT1NT3QRWIqCFGXr1Nped5MTuuyQ9t7/+PUr+ateJCJ8cMEmoGZtK3qZvmPo/KK293LeNzNAnimTI5SXBpJG9P4cO3/sd6ll092A29k6nhquhQMG+8VSGR+tP3JR/Nrio4tKoMt5GlM6zNemT5nidVfI6I9aknfzt/gmoFAuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734459354; c=relaxed/simple;
	bh=4s/l9zr44VlWHzynwIi1Qdd2MClCtLp5QT2bwA3T1Wg=;
	h=To:Subject:From:Message-Id:Date; b=SPt/V/Sx+W2woSC3WBieb2rEpA6isj8XmGQiorkHcI7ECZxuP5HBiZNNTUTFMWJuEaGAwNwNWajnqRSasd5w50Mntieehfvfs8VqNIjVp/zgR53p1s18MR2odJTDd8zpEnMiDFUi+j4M3WG0EKgRSW8V4e6ZtsJmqLlwuEOFRoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIHfUxgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIHfUxgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC0C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734459353;
	bh=4s/l9zr44VlWHzynwIi1Qdd2MClCtLp5QT2bwA3T1Wg=;
	h=To:Subject:From:Date:From;
	b=vIHfUxgAfAVjKTAUXVz72CTCVKIkMvRWe7Rz1O7b3GlAb2wQe8wu6N4EqaP+s5E4x
	 L4wUxwARPYFuoWfqbs0tLkWhglS4bBAfLa1D1jWVVMTehBlEH3dgMkXOTxuwat03aF
	 TsMl0i7/r0lR2zYcT2nAHdvVgebm3EeED7fyPbQlT90J4KLczCdkJFxSagv8x/6NkH
	 yGbD5ViyYGNQuIE0Oy2e0a4nRNYABNG7oqc2PmpoBej7w24YpcYjtObVV838FgRgDi
	 UuYtY37tI21vZEInAgySpp+AwvbAm5C2PxcdwJrvqMUB3BT9fVa8UAqnSRTuzFOO8z
	 NL7Vm51l6+dAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFFE7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173445935358.1070.2533556856871646045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937c6bfd590e6cefc9cc340dd3d2681935057b8c68389813ec3b6712f174580f
Date: Tue, 17 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734459353
