Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2934A17B50F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749125994; cv=none; b=Bd3tqnuNoC4qfv5lJQKo8M9cAyjrjrFLrd+nm4h6IeEBEJNkj+KhGOi3vTjAUF+Qa/g/BGcU93BDZJVJE8XZx+4Dmq9oP1+3X2rjtxozxtDPAAMZfEZi2vFrRd1zdm/w5OYIEKJ+X4cjIpSVxGUmgnj9i+T1dlfGOWIJw9KOR3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749125994; c=relaxed/simple;
	bh=kSpxiOeAH5ObmSRlskZPNKAiB4pdb0YVOYCvYOurDe8=;
	h=To:Subject:From:Message-Id:Date; b=S1ZhabS4eJ1c08ozEtCe+5mfEcOMQbGzElzWogfcnEDOOkd5oEkXp+bLdP+iOb3uuG9mjwl+fv/70gfQypLr2YAF7aRSHqtC4LgwPux30GJ2Cf4jYX+FyMRfm7yoXmXwJeoGiYVP4HeT9JRXxdA4+lZURZjwaVy7ebGWL03077k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/VDjaII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/VDjaII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC82C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749125993;
	bh=kSpxiOeAH5ObmSRlskZPNKAiB4pdb0YVOYCvYOurDe8=;
	h=To:Subject:From:Date:From;
	b=A/VDjaII/YpApAZOwRsX/97P/TH2V/KyKxy4294Ul3BqeC7bLvpjqqlyqb9GznfI4
	 y/vYPNYlsZaTJGQj5r77NMJUOKdhgKvcs6vt5U5EpTFgH6Uj2omU/nyWhBxD+qcbRe
	 VvEfxIbh+VQfextldSiAZnGVZaXiwf+zoCUoATjJBBD9pO1bF11CbZpxZmjFXh/Jvg
	 PiMX+KyNy2H1zVh8gZzkyq+hfK51zxc71MwJdSjuAWRPfV/m3jMpnDeZnXhrxl5GQC
	 9J9loNzSqQZa5R1U4zs0hzVu1TUigI8BWb6WkiiNkACohOD5Qh8dysVnGPs37RrGRz
	 bcGADP6j9LBtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B0C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912599358.8964.7375527395651583693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d19ee811ec740113034948bbd9aef4906e0da8cffe7379e406f51419b94f0d
Date: Thu, 05 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749125993
