Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298621C8609
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743532794; cv=none; b=K23X2xdHr7Rz9NIxLtTCdx3QCEep7USjQ5pK8OE3U8Q4Wetz4J0PwvfnboFybKkrHfvyjxrQk7bUSNr3h9tzfv2H2v8k2JaeNSpUhoiWCUO8vS5c6kirY6ahuNuTL4iy0AoF7ZXupY9DEELhTcW1Sl+YzkW01AZpV0uvXf6NRVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743532794; c=relaxed/simple;
	bh=pCdEfxSar6d3oS+AmPQsvdWYmJcI2kbGMA67Q2Ui3Zc=;
	h=To:Subject:From:Message-Id:Date; b=QH4L7Y+WhGq744Q7smE4ZFgD1dgdAPReU9pHXeQS/eceCzMNMqGOKQbky+vSYPoLBphFNqidAsO2Sy3sEIPUjFC/XvTh1Lzua/Nhj2+3T2KTkHA3NU9cbZHcMJhg1M7PAcep2gig/WjoJ9CjB8/wxOCZ28x/XLW5clWgqj1Ftdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urfwcdIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urfwcdIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C4DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743532793;
	bh=pCdEfxSar6d3oS+AmPQsvdWYmJcI2kbGMA67Q2Ui3Zc=;
	h=To:Subject:From:Date:From;
	b=urfwcdIrVb3pegMYWSLJh8aa8ZPvrEJsS7AxuSOyV/RLPkH5ENMBXFNyl5WrG4wqG
	 H1X5SVAYGQEy8bpvjBGuVuooA3jJ+owXuLnBsNiMsx4MQcj4vh7VLbLPmwqFztiyhc
	 EePY+woJpzRpTyykCQRs2d67mkbmXFkwVx2gpvud3xIpL33Hy/bWyqIOSB86cjSnA5
	 /EbsmLF+gVH+BXdZrXviYD6R+d9u3ZApu0kuPHuHUJ4nWUIKr9w0jF9oxHZXSvfTTU
	 UOJdkLqMg9WO/c+zfetfUpN7NxDmFeFzMkTIcYApayB2M8MiI8Gxu570DXo/C9uZb0
	 bzQMUv0MtLi6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B41C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353279359.16305.849089100958828112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169700d322086822273d87c39eba0945b8e6e546ffdffb6cc16b55a78f234087
Date: Tue, 01 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743532793
