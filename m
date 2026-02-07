Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC442E3387
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770429234; cv=none; b=a50BPImSnTnQsZrUfGMcUSa+Ez3jE6CkqZOBaamEt10BvYbjrvZCK+xto6M9WHpRwvIZQw5m1vFgmJnisEZHDUJZrtQ9u6ahhMXGCcEkZfCJ/jxoKDVy1bw1CG67e4AtUjLqSv5smRtBCwiF49BBHv8XBcXHqBr91zKJfZlWkCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770429234; c=relaxed/simple;
	bh=1eDIotoJz3zGJWFGXPr9fH+ZauxHpCav1wKR2yINSuY=;
	h=To:Subject:From:Message-Id:Date; b=gYi7y8gZKZDwwyDqye/k0c65r7AroAn/9aCNXsEKlph8DiL1sivHPpwxi+CE3JQ3qLvceohdm1nHNz29aGBMcWyn9Ny6JhNGFfPpeVVNMBmSuydzIvftXopg+3nznXz0Xzc7DYsuZLA0xuJBrAyu/57xtw3997UNeoPgaA0Lv5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxmD9vGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxmD9vGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC81C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770429233;
	bh=1eDIotoJz3zGJWFGXPr9fH+ZauxHpCav1wKR2yINSuY=;
	h=To:Subject:From:Date:From;
	b=OxmD9vGgb2WnbXbKddK5/g+u8TI0m3FQubkE2e+FJrGNoxt6ndhINrdHk5CQyeTG7
	 9neaEp5byl9RBniP4tGQMr8XGzkwg88o4cI5e0HVAJtrBy9SPSYfKY6Tj4Ln8qNqK8
	 vhXdxdBmm5TLKAj62j1+B5diNSCQQXdmi4mA/A2qbdXTbHe9hF50ZGxKrlpRJsQZJ2
	 BId4V3ZD5LizBP10/We8d/CDIPt5+jI7vM+0KQQGHq7Vl7bxkKPSOFXEgq3aCNlLMZ
	 vEgzTwcJ0/zQA7qEGKvHvGr0SJSaNwbUTpw6eaF1SVT4fU42MKWiwM6Fz3ckxgC6BF
	 HocUbCWWonwHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987D8EE6B71
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042923358.4866.726929787320820648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f515d430e3a43f72945a87f03ed4602490e85f7689583218816c6244db9965
Date: Sat, 07 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770429233
