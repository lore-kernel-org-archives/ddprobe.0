Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C34163
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6926AC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662432653;
	bh=ZXdxSJieRkCL7yQAD1kYqEXbMZN3k0FkCJRJtDJ/L1A=;
	h=To:Subject:From:Date:From;
	b=kZwpCIzuBLGzlfXAv7k4OzoEZXb4FmFYPg4kVdSuBDJitDsYyC6vvucCMnNUEPvsY
	 2P0PCJcE7PpsTB/th4NAf3bw2JaUhg98/xJESaXZyxecJGqZCB1zeisXeybJpLb+Nd
	 u6ahdwerviYrVHdnDhi/iHOv5Q+SXq/IIF3qwaTeToKrJ8GOc/UyFyR6rQ6/eoUWo2
	 ZiVoZmh86f/wBZxmN6UQOyyLtcF23DBuM+0IJuYvFxUrKsIZ+qHtLSQF7NaLoba9OK
	 7j95FEIsTqY0Amb090Js9Pn/RaygB1kTlRvITewtrFl3STdPBGYaRwngGB1WuAKFUl
	 QgkqiE2p/TEug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E5B3ECAAD3
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243265331.17892.9681787581894593349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51b86979d62f86d80993eb390bfbee3a017dc895601ec87edb010e1a1e6a680
Date: Tue, 06 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662432653
