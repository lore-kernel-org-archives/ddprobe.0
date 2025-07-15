Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6D5188000
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752590394; cv=none; b=p0RHETibPqGRNTfQWbcf0Wi8dqKbl7PB/UDj/PLTqSgB7i1huslESylnpq/p0AEuQ9GZyMpeklZDKoRLGLxRPnyqZr2OgQhn3DnFqG1OCIZ+Ippcv8V5mJNf5XNPpHrelu7gsyCgjywvZQMM90x2+JsYqrNPKCy1tums8rzkYu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752590394; c=relaxed/simple;
	bh=+2fnN93IfM9/HK4TQaizmOXAGdfAMU1KjUc7ToUDU8A=;
	h=To:Subject:From:Message-Id:Date; b=EPU0bL8ECNw/7r9vW2lWNsXNGtEgWV9vn6WZn/Cw3EEE9N9jgRJhjvLoPMzqqyPiKXUmdylfsnCngvbLoFQp5WR2WuiUKaE+/Jj7wgOKaYJd/+NZVBTjzdOoxF+tZLcpkm2bOci8IR+T0oroFUmTDbENQU21+qqxfYgS2M/SITc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eybz70hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eybz70hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB05C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752590393;
	bh=+2fnN93IfM9/HK4TQaizmOXAGdfAMU1KjUc7ToUDU8A=;
	h=To:Subject:From:Date:From;
	b=Eybz70hwS1UaCSpqDL/mVG5nyVpDhdv3R9kNVWhr2hfdxkQ/0DjIqWIfSTm3J/h0R
	 XiG+HCTh9zjYTOzumh7NuthCXB+X9uklGTf2jMIihjcMD8ysC9qvFhj5BoWD/WRB/W
	 Dk0CTgdcCSdA/Jb60h5GRpgfTT4cYBLaLI38QQi18UYgSA0K7Z4SUGJrc93DUaWJgf
	 lHYI2bJIDdcyKQ1xkXn9rMn0M7u7204tdfmPb13uv5EvE8CxLfSDtBjELxZg0MA+Tc
	 N5icxmtIGJ/C3AqoP/I8pA7XaNincNh7yciC7jsnnTjUeUjeAB4WYDlag9Ai25kiE+
	 4GicGpBLhoGww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CFC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259039357.3520.9904090831849025566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17ea16c18959839786219d78daa03fc23e7cc9b9cd0446b068510c02fe6048b
Date: Tue, 15 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752590393
