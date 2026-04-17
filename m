Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E052E62A4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776399453; cv=none; b=Upnsu8SIaubuSY6s2VhSidE0tlf7X/wLQ0socvSC1ixAb+9bO7Dyuxe16oTqOG0z/GpNNdYO86iBUmXF6EQIaBLo9MI2MbBtKP2vHfgZl35M2pjxFrZUAYA6mxfkfIRBFkPSpy3nXl8jzk+Mtreg0SI/wrZYcZbCyzNnddtpAkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776399453; c=relaxed/simple;
	bh=X1zQtcP8I3swpnGoxineDutxCqKTbK2Kwo2g3fiANl0=;
	h=To:Subject:From:Message-Id:Date; b=TocOLm1Zr4ZoOn8TbfaCNwSWPLyWH+m11b1AddPIag8fffXQlvNG6Bq5V2QEyggjl8JSsxW6kWun45CM27eLmhOgjaBYQSc2/FFoYWkNFSh1feOGri7QDSHE4bP+C8fjfFhy5zf8sUVYzEyk6jn2Y5HHApFmVUXNpRYeOEdMz4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rah6ymNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rah6ymNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9E6C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776399453;
	bh=X1zQtcP8I3swpnGoxineDutxCqKTbK2Kwo2g3fiANl0=;
	h=To:Subject:From:Date:From;
	b=rah6ymNbcQNDXh/g0YZZCYxTfjKa457RzPWPskAE6+fkQN9i24nxZLhXCgHKQQpVm
	 V4yUqQoVO3HBx/+ohGdp8VT9DJ5+iqJ6ljBmzb6f2tz5tIiEXSCJt2G98L/KAnpARz
	 6/EQHl5ZjVB2t+5m8q/MRiSxyYAmBdu5YY0tjNE1REwnmXzdgCPT9r7JAXOjM9Mb7B
	 6q0soAJdHGTaAHeECPVyBp/3vhe0noG7hj0Jld5hF6NSs/loumAXrVX5MuEVedWcdF
	 Ima0iJ1lzAZY7T1uKHdqjCbpGGv9MTcGBZhZV2ZtHuEB1NDMdLicutFoVtvl+ksgem
	 eBKCtB5I5xjPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9197F8E4A8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639945368.3704.2487942773616459943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b19982891e42d60ec07cc4194ec2817ce75a5ff546846790ef5a833374303b0
Date: Fri, 17 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776399453
