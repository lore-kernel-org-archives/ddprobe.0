Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AF552F88
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768413834; cv=none; b=O8+3rsQzqH2fgSJAHAXjYb38wMKv0LYZSD0qGp8uaeZay6kBKMq/vnJR+LKL9qA6Ocdm5+eUnDGCw/Rt5YQp8/XLNWnp7qhfSeD4RkXv0s9CnCvHFNz3cNxmAtbKbgiHicIjeaHxEXGbe3P5TQRVLb/jfTLmXc8uT0aGoO5/sTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768413834; c=relaxed/simple;
	bh=+6HJ8kk+JwJTyvRCOthTwiHJRqnDGg79wCTj174rWN4=;
	h=To:Subject:From:Message-Id:Date; b=R1WU9xwHBPGVTNc1ttGWpsnhvBTN1zW3eh/jslCHUezEYSq3yfI6k2YaXTxYDVjboKL29WaHXXpIzTOb8xxtluZHlEisrOVFaHRLfEbBt/jzNbzPKPmW1mTsFFj2UEMFRy8eLzvfD8ZID3btbNpDJeUVo65Cuc11wRJdi+cTuEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZj5TQf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZj5TQf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB65C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768413833;
	bh=+6HJ8kk+JwJTyvRCOthTwiHJRqnDGg79wCTj174rWN4=;
	h=To:Subject:From:Date:From;
	b=WZj5TQf0RylC9oaiFi1+RdS0PNRpC1LXz1iTCHjewyFTOicvmWjTR4SIZgxts+rmo
	 ZciSn143pmguYy8XWlFenvNKf9BeXY2cK2kueTqehuTe7kE7oGJsw4bh0cyFTWQ+MP
	 kGmKHlUnv8VleyUTdxtjHuXziQkGvPXmWIbif0nwsdwzP9XgtEVg7llizXJDNBcFB2
	 LJeJ/xiwlid5bg2BmTQRWJkoZhvHGagmpbDvaakJj+eb5HStKNZjusDR1DyRWDO20E
	 WWK2DyaBSHmRxY1Ij/AyFGt3DLPtnLOaejXm8PD7SxfkhL+VksDBcWO4p0mC0EKdX6
	 yaN5tGDz0B2qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1A1D39000
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841383361.19121.2134725243256884778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa98fd54291158cc7110d710c7bbe0903e21c78b225e2fbbfa4550c687bb70fb
Date: Wed, 14 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768413833
