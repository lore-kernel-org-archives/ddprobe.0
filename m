Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0334DF9F6
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnHzzfyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4D0C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702887496;
	bh=xp3/H+xrZnqDTdXdcC4X+BXE63RXfcPH+HWQ4BYMLPE=;
	h=To:Subject:From:Date:From;
	b=RnHzzfyOACD3lYg9iqG674wVh6v1ch52Hnyen8ZIJ7zkYjQV4qxf+0hssPvKttdcn
	 mc3T7LPn5ED9ZiBHiptg9Op7ElHRoygU/d90lUj5WZX7ChwsvVNSg9HBueZHVPiwQu
	 fOb5vJ1Hz5G+3BqlN4RoOJBLrzVvfxkFv2HzBy+EMRZDX9s6mhnrVCwg45ZCXpHozE
	 zHiGkigk285JtVIYSjOnjCo290vflc0fX4WrXXb/fqgJVzvSGydkv1gWyFF/qv3+zX
	 qyt4mcBSFYCmtpGh6tjS9XsDKKvYD5pIzs5now4xoBdIuczP3/3LX4ZVJrEEheAwSa
	 R9r874YUxcr/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB9CC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170288749637.18241.2711830204150404423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b8407e8a059afd141d23f7644a144ff07463e744cf00ef4c3d45472a20587b
Date: Mon, 18 Dec 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702887496
