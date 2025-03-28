Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BB73BBF2
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743163794; cv=none; b=GS+B96TilGiS68SI6CwDtPG9PhpzCR8SLyfhSG7gdm4ZA0Sz3UchNt1vlNcgH1sgpK2f5ZpFH4b2XA5qVdZeQCPZH82Tii7HGWLpuK7IDr8QUO1cBYZ1D82lIEcoSnq2xNoamwLGzQ0eDYubOn84CVmxn9RUqdwDLLLYHIwnFf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743163794; c=relaxed/simple;
	bh=xuF2DZ8oqTLpmDa3dR6A4ROoR1m1CO/xmidCiUks6RQ=;
	h=To:Subject:From:Message-Id:Date; b=M13KhPdHKF4JL9JrlLY62+ONwrE5fHBS4Yz9zj7G6XDGfwxGPnZjyTjQoatYgk88ZvFUpBm7hkZ8jc94x7cdsYZHXnNWZvXIn0wuTgWJSa+hsW5V2N784CrRqcfH7m3uHIpxD+zoI51aURpiVIfral0bHhl1rJxEXgqFXGsWzd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STYaYW3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STYaYW3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A58C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743163793;
	bh=xuF2DZ8oqTLpmDa3dR6A4ROoR1m1CO/xmidCiUks6RQ=;
	h=To:Subject:From:Date:From;
	b=STYaYW3yrdCLXAJ7UTZG4Qo4NK4rkP2NVGkRQ8QqgZBm4SJT7dsT0HcM4YHOhZAZw
	 Et+TAvewZ0VxOW2bwVV85Qc3+50vqLEyQlYewPedqVEZGBA3D2qzoC1WGNRRYpgxNy
	 eKiZdIP2uuUiY1ijgkUGmt+enH9K3JdJCy+kb2vC6iBiSy9m062mCtHSDvvqyFbM45
	 SEQMztw9vxT6tfAMT16s1UlTkhRixTaqTxSMpwEV0Dv43MIXrmH9Wd2hl1gh1vO3Xl
	 Mg0XmXlvNsrZuFQqZ6gkI+26qyirDrRSSP5pVW7IpMMyf1ipKBaJ9cAeOStV41oV3y
	 M+w8TX5oIBhrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEACC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316379363.2637.12012524727403563683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2dff940b1d74060a8e25fbb155d9c4aeed8eb78b6637c966472525372a90cda
Date: Fri, 28 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743163793
