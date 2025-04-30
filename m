Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0AD1C84DE
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746025794; cv=none; b=HPXrEj5L+QiG+S0S5d3P7LbMcZFwS+PK7oCsyXeo2MOwcAB6WzILxLAegH1QrkZq2BsHCIZH8XHcXC8s6Z1PaXWVCQ/L4WVQ25kVuX8O0zcW9E+VIvD+uQFlh0WdotOZ6lnEIi/FKzt7BT43V53xaoaHESmlH20vwwe6StkeDVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746025794; c=relaxed/simple;
	bh=kYQmr1kBUhvvPz12jIg7vCxV3dIcqgpW17waQY780Po=;
	h=To:Subject:From:Message-Id:Date; b=CCUE2lhEWgWXLkIiNddXjGbJAriCrtYIU5o8N/59gSJuXwmn8Aa8RMgNLKt61IXNquS3p59yPgN7yPV9jbj2kao3r4Fwh8a05tNpqQrMmTN7DZZQXadIOdBDxAkklFwuW0J/Zi5UC8Dsd/oaVUXvj+1s3CCFNMMMclXTJ+wa+P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nvj71OV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nvj71OV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D55C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746025793;
	bh=kYQmr1kBUhvvPz12jIg7vCxV3dIcqgpW17waQY780Po=;
	h=To:Subject:From:Date:From;
	b=Nvj71OV7SIxJ5ECnEqJrTM4FWDcY36fk7Ppy8BQ+8I0JAurApPIuOyF9nCVIpYdAu
	 lfKvXxl9YVMZgjQ/46quEs8pH8N+/MVPbgscGpJWfeEGcgi3liXxFdfqzKRjbOLdkH
	 fF8zADiXEiYbyM8QmQoOm7EZ2lYP8bhXjkWUTpT431QLWc5sAnt9XRIRMTyQ1Vt5mH
	 kpST+/cx/PapEqkrCdatsukOty2VHArxPaUo26t6LR6LKIcJPEmllIEFzMjfZFmQBO
	 38PoAtQzE+11NEzLo5qqvdNY6tgh8h9WAfdRQVxQHBzoVxyMvKqx7icMkJuwiJ2J5H
	 zHR/BMjpMUKJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97BC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602579357.29534.5400115867232059710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0daf65caed910fdb248789456cc171f83fd06fad3af7668c182cfac6b53b239
Date: Wed, 30 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746025793
