Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FBBA461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C070C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669658454;
	bh=2U9e+WEgZjZApI825HkcV3EOS10OdiaAJTpFFMwM8wU=;
	h=To:Subject:From:Date:From;
	b=CUYBDa9Dcpb40H4ffhpIa3GxMnVR33jptmbqIQmX2IfwPvSMuU1efyWyFthlR5aiM
	 SmnChqYetf3LTib1zANFbT+nb4TmQS16ZdzMQJBxPs7cTgLP3wnfW0UGQOAm5IEdxJ
	 xBAzOgOeSYwhRYy6FJE3dgUm039LKl7J0OJz5995dYJm0oJao7AVKoOQb/qrV+iLsq
	 vl7OZMLShsYogODvy6voEdRR0mMDm6VGt/Z4MGOP4j/cY0EVJ4DaFfekyYGO04xwsW
	 1M4iWZ/IGoz4WYrrYMSDiLz809Yte/zWgzeFRhtIi0b9S1VO1JcaaPzIs2UPanglu5
	 HomPlpX0jl9Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559D0C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965845434.10428.5683267728557179516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37afc69db2e05a63df01d12e36ffde7e158bf9c4a159f3feacd44d5c7bc49ce7
Date: Mon, 28 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669658454
