Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090604644E
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711209497; cv=none; b=lypU6UZtfgHn1fyIU9d8stKPYonJ7ZsX9+NIPPrdpPxdY+3z5WCJQG6SsJqulG3U96tfz0t8l0wCoHBUrFw3nnbF9CLAf5qHgIBeb+DFo63iy4HCrVFYgAXnhlF9FY2yMUpjhTQzMaFmYOtCOYC0p9dXplgH6+POoPLedzNYIdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711209497; c=relaxed/simple;
	bh=7NHE0IA6CTRnpEmu6hiBs1IZZ2hWFrjOvPvE6B4si+U=;
	h=To:Subject:From:Message-Id:Date; b=Y4HZhnMARCtN/D4waiD+ivMicqxv/n4w/b7CS7DbCAa3PsIvAySMbMHsD9sCYMNllVWoRRX9tqbur3gR6dcJJiy+aTKiMlVaMKQLqRl4Y/bJuUdnCai1XZKYBJnoDw923/ZwwczygB9/CnN2jwYXBkgLJgj3B3+9z5dfuoYC0tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntKrkOH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntKrkOH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788ADC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711209496;
	bh=7NHE0IA6CTRnpEmu6hiBs1IZZ2hWFrjOvPvE6B4si+U=;
	h=To:Subject:From:Date:From;
	b=ntKrkOH9TfmsYmcNZiWT52KKMNVqUcIC7VlMkzrm/IQVMUwxkWzaNsxGBmW3Ctk+R
	 KsiFJYWH8QxV8qP+v7rTsDYhzesGIKW+6YJGaBolBXJhvQN4dP5BpLsQeHix2QU+El
	 R1CSTzPjQH2JfqW0PBEu22MKoghT2uI0MR+b1/l8AINDZ7oj5RRp5ynTKKmEVeS9tr
	 GlA5IFgPnGKJk08qxA0rt0/kRZYCukLul+Z2oAmPMEz9L7Owwzqf2r0zr2HWpcWnIk
	 MPBto6r7f+MwRXER1bs16FxfCtpcW8f62p8XFc8BitqkFWKmXaW3IoAWUAFRWvj0K7
	 RqVLOZF1yFTAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68ED1C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171120949639.1924.3891239377083234343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3608c5a51310fba8a9505b8c1f8e23328ac5dc763fd1a0998e74e8e1e13e18
Date: Sat, 23 Mar 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711209496
