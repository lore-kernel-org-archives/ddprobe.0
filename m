Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339BB3B2FC7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781578594; cv=none; b=Mp2ThaGH1YEgV7mXUUHdUOPVUxfR+Y65wo/wgP5Xdy5y+iAibqkoUcZ1jR/R++we8lKmCl6SF4lhkyyRTDuNJLzbMOjdnTRqYA67euMZgK9FmewQqQjDR7Ybfg1LTDFwQicRXCOM0Nsw821V/oIuV0BkKETwBYQ0+h+o7niYaLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781578594; c=relaxed/simple;
	bh=LLljgT/HmVoI3XmfloI1uvk8YRx+OvBN7Hf3pBQZ97U=;
	h=To:Subject:From:Message-Id:Date; b=MjRJan7D1BkCaQjmr6WEbz57F8qcbp2zApY2P2NJwE7wGuomeyBB9ElBFqAP1n8omtG0lKg4mIriHOrNYlRmGZbHbtn7E6YJBTKuENSsZ+AvcVEOJDZ1jmJwTBTGbHz0uBFjNMtYBvjihAwT8xTnpBVDoxVMaf5+IUL4vX0kt6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AejLaTd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AejLaTd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B5DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781578593;
	bh=LLljgT/HmVoI3XmfloI1uvk8YRx+OvBN7Hf3pBQZ97U=;
	h=To:Subject:From:Date:From;
	b=AejLaTd73CHM7k6H6RAikldHkj4gt0ZP2Cqk6KTCYzNkGjTB3ejkAtBUqynFq3qgR
	 8MxDN7Z73yi0+iYAz40Ifuoo9q7omUZs8tZrjeLXzJQNfiKHRHiHBx/ijLpFmAB8Vw
	 orA4ywMExCce2XrZhwVYnbzGVoFPzV1f5Y/x67BH2xeBxApKnOZn5FeWuFjLgm4fft
	 vAV1z0hD7ZxtZ9TJNuHVQCLPws/b/TdwNxf2ycXXlTqya3yzCNiHstMYp/MNaaJzQX
	 Tc1IlQhiArM7PEwx/LuN6aVNUkRP5jUr2m7yDXfHNhWIUp+B2cihjuLgogi4PN+oeb
	 dQ1buj0ku4d3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC85BCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157859369.17226.7005190558693632512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8884f71bf3a111e53eda09747ea084523d0b562f31924acf35105180f10dea4
Date: Tue, 16 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781578593
