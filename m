Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A9E2FB2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744160994; cv=none; b=oulVoV/8R/w4Bg3sQZ2Fd4U7JV0xHh0lr98BmtP7QzxUw5J2aKVvnoaNVK3HqzE3RtV6MBiavFxbqhcRGDKjSJE41WD2eU5YnEwMMtJOjz6Yo0IIFGgfm7xC3zPHNE4G9enqQt625SFAln/QWKTKZoYOAlRrfBu6tHq2VlV2S3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744160994; c=relaxed/simple;
	bh=BsLOnGGYE6aq7kvhGGElG86QOoUbByKF8FH7E7zZD/s=;
	h=To:Subject:From:Message-Id:Date; b=kLFZDMgj1Vyv+UjkTUqd3yFrisi/EAsR16CaAWdJlyRFAoiv503W7cpi7VgfFVx/+Qk6ofC45IX4OsR5Wc4jUoZhcrIRrCJotj5Sq5hyEZ6d9EiM0Wzk2m/XW1V8HNXlFfwYSXyAsQ5o0HmRdaBmv+pOfwyz/EA80ERzN6svkYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqmkfyZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqmkfyZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A522DC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744160993;
	bh=BsLOnGGYE6aq7kvhGGElG86QOoUbByKF8FH7E7zZD/s=;
	h=To:Subject:From:Date:From;
	b=qqmkfyZSOnSpD359cur0wrTpDan4X0yhVbBIHcbtnbbTfK0NCRKaJlpJIUeJnBPBM
	 QjDxQk1nOps6YgOznVWIInMIlctWc51dduKapZHE02RZ+tAUkOw27tgIPZInoYh+DE
	 9/0vIRXTqH031WDNaN5GoMta2eLEpoN0sw/5i7WS/J59d2KmuN4EdNVWKhgcef28Us
	 CtTfLu7W35m+FRRKkFbPrPd8EIdguZYi8o4UCEHWSWfJyaP/EPuuZ7/t8hcqjK/LHF
	 d9GFknp6RjWRKIeQj4aikIN7a8/cfGWvq8wZjw8oBiSXgaQUxvtWZyR+FdegNs7kla
	 LwyMwkCKKx0qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E1C36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416099358.15531.7413826768269528013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a77607f316b19146045d77bc839d8720b619a74eab801bcbb1dfd126ec40e4
Date: Wed, 09 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744160993
