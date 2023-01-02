Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF82F568A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84830C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672689687;
	bh=XR/BmWRXIYoEB3SU/UahluyqKPznSGrpe47IyrNPkTY=;
	h=To:Subject:From:Date:From;
	b=MBU189AaDT1gLtCCJ/saFSsif+Zv/38MGQoaXgqaoaHncjn3agG0Kl4/muGzS3z/U
	 OvWrLypmzmYhX9iWiF9pWJOE0DseDcwaYAX7SVbxT39wJHTYxvs/iT53+7UWfkOZMs
	 hvPOqDC7M9sABoDzAJnHOEEOXQyhI362YviOGROgJ9QZRjXNitlNYT6P0ir9h5ur+j
	 RB3nsGJBG5fMN2G8MnwgirfHA7Vd590OmdNoFHcs81aS0rnZxOF0QES8WcG+dhoF6J
	 nX7vzbtdySMf70V2R6E3tdbOWEx0YmsfAMHsXe5BULguSIFc3ZB99HTurdJW+3XWFI
	 Gv2l+7foaAWNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655E5C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268968740.13673.15632231941685337856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6974b598c066b0b5348f9b0312e65ba3f4e32ef71dba901e084058780165c662
Date: Mon, 02 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672689687
