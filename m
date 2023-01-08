Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C29828F9
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:41:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04A99C433F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673203288;
	bh=DNL8Hek9aBracacIEelboSWmof3Vw544inxuIZwTecU=;
	h=To:Subject:From:Date:From;
	b=Sn4D02yja8q7bUVtkA9KeZ+jiALp+IG8i7eVvPBolwY2WB9r+3+524QUf2U365lym
	 60tGByGoYuGn96lSREqb8iit2cN3ENdHEUH8G9Y6WAwshNRGrGMf+OxIiMKE/+RCXz
	 l0t2HiWDLBiijYUzuMxXea+tZJpGmTbwErg4D7Wbu57eDpCCmLRO+QfpnwoQN4xpJU
	 SlfrhvRzlhcbeBzJvqINZjMLRuw4a+bYrFZK1s3Zn6/sN8VQ9xbqUP2ivm12+9sENr
	 NnaQVg82Lg2zH0K+qhtdNccRgswa1KNtpUKnIkEZjX7kN64Tg437xCFVbO6Oxs4Snn
	 7PYhat04WqoOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29B9C54EBE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167320328768.25004.937947362148234649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03993b2293332882f12eb93d4fd9fc44a80cb02189d8e0e30b208c012ff63593
Date: Sun, 08 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673203287
