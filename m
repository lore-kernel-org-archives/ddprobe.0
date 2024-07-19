Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F44224CF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721408154; cv=none; b=NaQUr/v5h48XVzMvkWHt4Z296eV/GlxdddqtxsmwSgr7KH5VE7bwioWoA/F+xLeZ/a/XkaBjH1kBB464d6df7XIglfGu/Q3W/ETYazcjvYjCyxFD4oVfz44PYHHPj/3kKnX7DE380VP/qWNiV0PU7QBU8IxI1b5GxCyuPB09W0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721408154; c=relaxed/simple;
	bh=3HI4JiDOQg1amgUf9tG0JiFxuHVUbLV3F2oLE+eokWY=;
	h=To:Subject:From:Message-Id:Date; b=ajfz2DtmNg9WVDr+cBRd7+kTGjfuq0Z7qbdFNmhJNYivT7EqKqWTcrmJPQUL3G76AJo+f0F3/0E0sJndfuQXDiPgpYwmoutK7M3nRHG+VobB9DgW6IxAs1pQZUR6vbZvA3iAKrNYAx9a4LJt4mTF7GwFiP0HXOmeH3Osqwp8UXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXPsxSRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXPsxSRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC850C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721408153;
	bh=3HI4JiDOQg1amgUf9tG0JiFxuHVUbLV3F2oLE+eokWY=;
	h=To:Subject:From:Date:From;
	b=fXPsxSRZ3p2HpzRVD9JNFuFWSUqA1rbyfdcdjqHE50MT/1TxQn4DFxObTJSEBiTQ/
	 N8PSnDLkc9AByc1Ne3am/FprM5DqGerUAPaPjvgiJvGI7eEDQ9dThTe59dNWluqZT7
	 zS8zMAWVBYqbBldmvHk1MIrfVSb/eNO0HXvHFQIbh26k72rr1ZRn/MLzLlH9X1WuWt
	 ZdX0Rgb5jhGiehA+ExLJ99SeDLmrB3KEMzXwiXuRyE3lZfbemtA/cpxXi2MQugortr
	 Af/D57c3n4AQ6hKyy1H9kvY9R9LjzUS4UURqITnEWSOzf3NBrKTw1gs9J20uM3dfx/
	 M0iRyBQJ/Mi/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9944BC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140815361.14339.9398199064561775963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75cb004e4cc717320915ea47bb3a982cb451a92af6148e484d7b4971fc191b38
Date: Fri, 19 Jul 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721408153
