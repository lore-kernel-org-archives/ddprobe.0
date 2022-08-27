Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A7615A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C04EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661596252;
	bh=eOqAX+l/rTPfhbTZCstBiJJLc62/VmEgK9y8azQOevM=;
	h=To:Subject:From:Date:From;
	b=NvmFG2/d92Ggr+lvKpXE6wCy+gJtP7M4+63nsWQruhkg8fQU9e65HPQj0zhcOCYxC
	 WuwyHpKN/2sAeCYdPkB/wjhoH286Y1oXZf9JTiI2sHKjHr75q/u567JDJrWSikzp09
	 4WfmLbd2oj+APpSC05RiBna88UKdoCB3OrpGxm7/6k1BeckquUQHuVzXYWsHhNAMW0
	 /skYFnNAIicr0XPsbdHZDFk03WrqSjQr8sz9jor47R2ZuT0deHScIzvY+cNs7hYgPR
	 PY5JL2yWI0Y/xiqlmtE5oxQURDCDBb409LnuPMYnFst0lb7jCLifD1cFe4Vv3Ug+76
	 4+MoIkxsuEt2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52933ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166159625233.26193.2587485772486484555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5baf9acfeaaa99f673f7da326a22a841f063af6992ed7ddb2666e11bfebea61
Date: Sat, 27 Aug 2022 10:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661596252
