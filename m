Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09232D787
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alIIrK7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78696C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700851696;
	bh=SHWL1MeLAb4bTIuOKIHLQ/JLfc4Gm53Bmb4Hr2ySXTc=;
	h=To:Subject:From:Date:From;
	b=alIIrK7HzicNqXSsAAm010/z4z7qjvcrPzwsllSggCyaRQVOglw7R/tkB8dboXR8t
	 aK5VzJuGM8AXDLwdWtUsB6grwp8p1uwwAMPQbyaFH7SJ5+0jX3eAq7a9Jqih01lnNL
	 tmz+mMhsJSnFix4e//43tbjTUXo3L4pYk5TDlbif4qfahCh2GU5XjxXv00Ndfav6dm
	 bM+lmcDiMfFgbah7vQlJtNV9ujQn/2i+AElMJruDDfExx6FLkXakIEcE+VwWZ0gclj
	 YfvHVOCHCulyeiOu1OEctQQseW+5xlbXU5ySY2Vp7N7pgSjSbgFmWbSWOPP0wuNqtC
	 x1anqcPy5yC+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E4CC61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170085169638.26039.13424504834274417454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5234d4fb45ecba06b42ff45b72774cf6da551bc48e0f32d2f6e31c760aba0177
Date: Fri, 24 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700851696
