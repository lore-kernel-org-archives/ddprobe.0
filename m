Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC57D23A6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5F6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673368887;
	bh=Vh6I5NVl/73VJ75E8UQw7ZhrQ9YcZ3/DVBgOAW1GIks=;
	h=To:Subject:From:Date:From;
	b=G1ontB7vY3HuSMuQLR2/ak6qwwYOTzxth4RZPUHJ1UceFdKLPIYyusaeNrd1jmIhV
	 TfpzqOlUHKL3bE+0zFcRo2fr9A6rCNKqvfh4wHcCE/1sn6wAMTEb7JFV63SBpcKDJf
	 vqtYRt1sPVEh+3X3h/EZUlxy4eox/29iqWl+NPpxn/S7+gzKrKBHuHSD/BCDWYnt+M
	 DbdmX5XyfffXYtqzNMqVqiQPz8OBDS9ZZFQI/rCk6YKmyjBWNqQXtRyu/Sx7meEoNm
	 S2Z1ovAmzUxibs+8XRezbpqjIIRaB45sp2Jk64rlb2kCsiBNgr+5CYvM4NixpRgN5v
	 iA1nmH+8nzn4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F435C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336888738.29698.16200279882033494480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9095a57f185b3ba264a4fbdbec0e95a11b0fe140699de682a6fb984925d33d0e
Date: Tue, 10 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673368887
