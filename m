Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696C219067C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754362794; cv=none; b=olbaqOUh5tSg33yWC1B5CIZPF9vl6znIeMhTCKvC0pfRzzBXYEXrg009TxK/jYiZk/fHrUV+GM0mhFA2cevBJlSLnFExPBjjAKLcG8Fz6Jrc8EHSGWjrYA4JYwN5VJl1AhspCM03oWnOsPYDJd+XjXPEUFS08rUE/ugwvUKTXLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754362794; c=relaxed/simple;
	bh=zJq2pfBQ/g4xFQUjkdBqfuilkfUENZUo2mzMIVa/OrM=;
	h=To:Subject:From:Message-Id:Date; b=Pi+PV9JYJHPcOSVOAD1hmVtV7NhecL/desAgLshmHRGDiJbE6Pj/FroTN07P4T9wKnLG4JCXeVzVpipL5k8DOWQzg0A5aEKWQCtEel8VgMXmyjd4mi0pyMAE9UUDHzqZ9XTxuMXAkM1fIXiAtn6399LcjI/dlT6aYK8Dq57HoXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3Z7peu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3Z7peu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754362793;
	bh=zJq2pfBQ/g4xFQUjkdBqfuilkfUENZUo2mzMIVa/OrM=;
	h=To:Subject:From:Date:From;
	b=d3Z7peu2EaP2sTK8/diafkfYMFauOQbO3hpjjSfjf9r3e1ZXHiSIH6g9RcCKD1bRP
	 Rz8fVxHmWKTF2AWFhOVBgQBnkBlV95eI0/416aAWbbaamPHgCSnVOq51uzikvdRox9
	 kzaS8/m/irnkRyOuhvrCWz9cF7L0RHIPJ6lxz8PB9eUl2JaEtZJPfih0BVWJuq4TWy
	 UkR7PVfVWMSSjd4EHHeiI+znQ0bOgtMuR88X/+Oifp3v82gcwhLBqNIKFp0f1XLqIs
	 13WvhKT28BUXVbVvTJQUou+Ai1y1feoT9xtXCSCIrEZ8NDElH+pxTc9PMWjD3Dp3V5
	 /JaJkiUPdiwJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F158C87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436279357.29353.2206285202997347913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a960f351c85dc6cee78d63ddfced517fa48bec0c825c193f6158d2794398e86
Date: Tue, 05 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754362793
