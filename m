Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A679242D98
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752501594; cv=none; b=uV0/s44Npneqm8gLbE9GpcO5JEEuzP7AZrN8yzdI6MYNCdC6Gxq77fbqVobhMrOmU5CcXYyi6FMdVOIdrhLsWl4JLaq1SRZwIY00z/XZURqxIlvYP4+JRSDzJVxhjLM+uACF88gb379Zz2Snt4LApjHGBDPOgr+//HbOzWpqP4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752501594; c=relaxed/simple;
	bh=LIpEzrIR0GAYF9z26XU4h+btBfXDJocbQ+lVrRc0hak=;
	h=To:Subject:From:Message-Id:Date; b=q390v4s7/RsLLUOswwSRu+BucPlrm0uMrxckzSJB8a/V6T80NjkHpbW9dlA8BYXseDaOoPYJalM4ak8zJKGiy32sfQe03v6maWotIX5VgnTR7bJf9lImu8VJk8tfGQZbhh4RKcfAgV/DSgGru+OUVwF7z6rFIpVGvvpANzyLyNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEFKs0r5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEFKs0r5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FA7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752501593;
	bh=LIpEzrIR0GAYF9z26XU4h+btBfXDJocbQ+lVrRc0hak=;
	h=To:Subject:From:Date:From;
	b=GEFKs0r51FQq5QR1fYJ3An+O+sm4TtDz1HwujYvd004ED55cKTHcnTD0kdkYM3Hj3
	 nEWcTBOgGQjZ4r+vhcSqf5ru0m6MjMVa6klSmPEUa+1PkN7Y3MXP0VsfsACgIhlS8g
	 EbFDr7oqfadiLaY2DswR3uWT1S3zC1ze1RThZiUoLy6awLthEFJAkTMdjg5+4gQOZD
	 q1cwt9qRjL91gASzoMKKXrMULWg5JrJXUqsdNkMO9QiKZYmLnzWbZdJxeWl13sP6pW
	 wVj/SrFxvG/vzPOU/TRoTKOtsDlo+QwJl6BYJmM64rm6nfleVRr7K6HOFW4LPqMjxy
	 AB9JzyFlh+e4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A04C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250159364.21973.16763790714861530719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315a64c732308b6ed83249b0fe8b8831ea442013ce3e49fa356e57c702010aa7
Date: Mon, 14 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752501593
