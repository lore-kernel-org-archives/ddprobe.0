Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5BB2931F4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792250434; cv=none; b=GlGt5fZRIYSm+SZXJffSRwR5YDx8q9f2xQsvtg8txt7Y1yIgtnGVp4k76hJ2a/n1ujzpT460fnc7BuXeKbxm4irOBOU9r8PCjxjSF73tiN5NAC2l0k5bu9aeeaHS18x7FxiFhWPkYu/9yzrQy8Gv8RDSjpSAyh+5CZBM+NZIEHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792250434; c=relaxed/simple;
	bh=wb7TrjSU/ikTdXjhmOd9TVlSK4kzoXrru9XFu/zJmaw=;
	h=To:Subject:From:Message-Id:Date; b=PCtriSnmy4yrhKVt+LcGowSeUVsBEk+yfUMWEVMqZJRqsYgLxTZ3FphdgwiFw7EcXMSPMIl7BT2h15fn0g7feeupRI2WKzLnzgFen3ZTjjTQTI7/IInY3+I4/BkxmqHKNjF8S+K1AymSknxyXC6L9SzmFm12h/MHEA9Wu6q0gZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9f+smr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9f+smr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0796C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792250433;
	bh=wb7TrjSU/ikTdXjhmOd9TVlSK4kzoXrru9XFu/zJmaw=;
	h=To:Subject:From:Date:From;
	b=Z9f+smr6R0JYss9AXJOLnKgDqjbxw/eKTpIZY4HPW7r0UKEkfyRhWQjT0xFO1ozrp
	 XmfGbmMv8Ww02zkuCmrAgKqn4GDbDqsQxy5qC5n6wP8X4DqBU6/lMFnNGKVkD2/8bZ
	 lZdP1s+gFXBEVXI2C/H9HpGrMfXzCRfM2PMmBFEOrAG3hBs/qWli/qbjsaGIvHxuxs
	 rGkI/1VKy17A9PC4nNa3vZjmmt+etugWDd9/4FaBcxd+tpBqUs+e/aTfiK93hnyBZu
	 Wpoiaks8C7Mm9Onphzp+mSn4dxAd+98tcN30jKFCpnAHwP2lAF6lo6KuwsrAvploUV
	 82jY2PQsRzmYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE035CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225043370.15843.11410146734456973555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7118cb0baffe02bcbb9eba7e432344effd51d1586c946ea6773c92552179d88a
Date: Sat, 17 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792250433
