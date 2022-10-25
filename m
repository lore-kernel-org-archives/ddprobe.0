Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B473D7E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A7D6C433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666663253;
	bh=S/Fz0I4jwy5QMYcv8ikyvHJmLRygZ4T2iM11bLbOJbE=;
	h=To:Subject:From:Date:From;
	b=KkX9I3KctgU1NyxYUdFTu1X5V+/mFerXxtBwbO5VG4Zyu01JlPG89sZU6fCTkd8Xl
	 yjJ8ZkSFpBp/fw8UWNVK9J46MTxngWeBrkCMfP7jKvEMTkn8PwWEY3XGdeQOKd/Ykf
	 +DOe4UMeuuojTgxLdd/K9sI5J+9ker7jRLB5+lM/moV761RboiCfLScMLi7hitcT6O
	 UdiV5XbmhFuropmnOrptpS9l+rz0tQT6i7ooptm9jTgn/Y5as71LKQ2x1f6qTur+IC
	 1mW3klqNOntRFQNcUzK1W3DdR8EzBNyxPmCcm/X+pBWsgx1Ex1ohIguSOmLp5sMUIG
	 Ov9DE3NEo+cwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A87C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666325333.31995.3283613722279962404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4d25f6d43d71ef37c431c0bd0bfff6cdd70b7c14fa1b85724b356461fcc69f
Date: Tue, 25 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666663253
