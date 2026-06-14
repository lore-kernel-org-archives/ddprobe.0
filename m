Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80051262FC0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781416594; cv=none; b=i4pm9Gbp8hWBlIRyg3CdQusPY3qc0lz8qD2ZLnCunkieKreo5TGQUtPUJ4wlP5S2J7fACXMBKEHyplCxnH+i6Pnj6h75z2+hfm5KTiXI7K4ICt7sshS6ybq33Q1THJcz0R9lVCJ5lIcrH/snBLk3Ssi9zI30inFubttakKIHwX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781416594; c=relaxed/simple;
	bh=98S1hV+wogd0fVz8xBXmIH8XEhWzB1TUds7bgbGwNkI=;
	h=To:Subject:From:Message-Id:Date; b=YmAbriEekogsdGOwlAt6r4nQLNj4r/HSNVvrCFXdt9KhvoNGg4i6s2h15wWe8I85lfPEghfYZr8A/cKTOSlWe5erCTj+XiMGvUVTDO/Y+LMMxHPA7Uvfb6yPUIeORC8RoLiLPPDw/0r8lh3eFXR4HOnR/Ucky2szpwBjGgHsl6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qfxb3vFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qfxb3vFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80EEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781416593;
	bh=98S1hV+wogd0fVz8xBXmIH8XEhWzB1TUds7bgbGwNkI=;
	h=To:Subject:From:Date:From;
	b=Qfxb3vFrlEMCZS5Bz5gD9kRJHaceaq5cn7NzipLQQe54we2YLtBQDXIeapRui3wzy
	 U3oeqFcBRc5tM3tWPkXNcSTKJx0Y/nIercakJ66R0bbo2B3dFIIHTDYHrJTr3kHPOC
	 QjZX5yG06Bqx1EOVv5YD31I0VOnJ8H47UDYWRfuKp2js4rj20quKNhWMnJCpcy5yP1
	 tiTg3kQ1r5U7JfL7TBtbJDBUEjA9oK7Qo7Bixr5DwclnS9/qK7PcZLE+kyTu5YDJ/8
	 qvu4yRlH6klVHW6wRy8K7atvuhwaZaJqaMvLrO39KWOUTtjx9BzysdslKUvVaKHMFE
	 DL8lCQBCtWWZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0875CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141659369.12367.11631430707686571141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8cd7003b4ce311536608e0bdfcee80c16550ed4e2e532cd71461499d10fa40d
Date: Sun, 14 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781416593
