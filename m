Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A8318035
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHDT7xBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96638C433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699294096;
	bh=SM7u6VnS1To41kSBTNQQepSNJyfAbOLNjVKcacAN8rM=;
	h=To:Subject:From:Date:From;
	b=JHDT7xBuqCTrd7u3txB24DLOO1glAATA5sbwdpMaPGtClT4A/Ph16KN56AJcMAw6s
	 PqVJxw22GPJ85OSBPp+c4f7cl3MiUjICbCV+3ac2W2cUm5D01vQOUH7hF2bDaW1Y8A
	 n2GL/ttm6WWxM8cRbtILxC6csulVwSd4qNFGLMdSvpwSRTuyc0JM+UxU0ZCi48RlrB
	 0uZAIbLcEESdmaNoQQ6evj+kjSN1QR1MlsZ2bnl9QG/A2uX/chJqiaiZJdtl4+eb/+
	 IieJSXihtE9n7J+jiiCrjy/yA2erCQV2XkQPFvcG2bZcu0HuMI4qUSLvFOkw8QfiZV
	 Rbw0mlxDRpOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F51AC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169929409644.18325.9841050907985738554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227701366b8861e6b0ed72f6fd6a08522edb03910a0a7c35f73d0cb85e4976fb
Date: Mon, 06 Nov 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699294096
