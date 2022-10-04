Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE51180
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB87C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664917253;
	bh=18HtWJtQ8TRhKVOdbkeTPIJqtXWfMDnfLhkZRMzvAcA=;
	h=To:Subject:From:Date:From;
	b=qmNn4JJp72M7RPgC9WVAwblsZqbNNXLd8ga6RtlnfrGx5KBHBmme41dJWO8Nc7THO
	 IMhU2o7hLj3WD2cQcQzcxtanjPnvAEpYR9YfwqEqeTBIxr5DmPq7ihjGaxu4vHJrQa
	 1YjcDZQD3aVnylDZn2lydyF+WzXj6fKE2gkbxpUW7bfjpYTk6oAC7ygyqcby4BbI4P
	 9ZEwclaGTtwl3X0f0Y3W51EPj7KScKQTn5ddYFQ1n3015QyWv5uvR8iY6PYLnxpLcP
	 0hzCeuiV1MgDfHT+3TanDRlcVhhTpJ8lMlIAp+ASoKmNUXgOI00hmY/qKLL4TV00oi
	 IWu85gd32dD7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5481EC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166491725333.5265.10949501471115339873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a369a076ff41ae71007dfc48627d0132a2bedc85168fd25bf29f2eed05a01b14
Date: Tue, 04 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664917253
