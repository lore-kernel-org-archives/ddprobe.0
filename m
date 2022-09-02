Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDBE7495
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7331DC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662157253;
	bh=Okg1HYlnqeORg75BymzON3sCnuEQykgZD1VeU+ZHK8E=;
	h=To:Subject:From:Date:From;
	b=OTW82+uYZdFLyNRC+NY8zJaXy9DZTx+6oTXkFbITDbMLUyzJ1X0n8rwiIHHQcRilT
	 2X2GvbwkvJL5Ui04T4dCk+pfEuKaRD085YHyElp8HADf+WZDjrLPlovJ21//l7sNDA
	 DJKxMQyMpGqShbW8i99c2h90kB8vtF4deTnHMbxQTwZ/1T852hBoDoJYIBMv09mIZi
	 lKIGrCXC5m465Ny0dOtEoHzntR7t3WqNfH4C05HXfWWJ19YCjiDKFVpMESTvDYV6Oa
	 Z70WVMic8E/LuL/SS7MbE3MnqJ3BcuUzTnJ6kW46FTTaVgbL0f10YAVEYtWIcD4xLW
	 FYHvuAqATU8Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F21ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166215725335.6514.153603955250904187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b12ecfde51215770cd572d27be63f05370654f5b9be5a4200d59502acc982e0
Date: Fri, 02 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662157253
