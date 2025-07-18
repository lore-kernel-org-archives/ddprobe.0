Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E52D2153D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752824394; cv=none; b=qAy5HYk+luhOPz8sbDRkxK2UoS2PleEnkWBYTI6AN55AyD7rCrCoY4kxc71cJGBsMm/z5PR0QnfccW+aIC8W5uwz50umgqaWFCkGDu+iZf3mcWWcDjZK23X865U77JmnyNRdGCz0tLkrkQNlkprz2NDcgVkQkQJZy7+H19RIj6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752824394; c=relaxed/simple;
	bh=tLw5r1lhldGKB881HCqkIRGytgUCY4pKhajQpfBK87k=;
	h=To:Subject:From:Message-Id:Date; b=EdFy6nudx5VtlCry5i4rzgvhD3jHB2j01SCv+KemD2T2GDEfbxNgGJ/owFZtJQBd3NzsLzswzvrUzUVKnFPh1YwqYMJ6uHNT/c18yiR4/TVLv3JVmilxBk99pMxx9K9tw5QWKnjGS13CwT8s+sSbwX+mtyPyRFQ7B3UDW1uPfbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y//1xrLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y//1xrLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F066C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752824393;
	bh=tLw5r1lhldGKB881HCqkIRGytgUCY4pKhajQpfBK87k=;
	h=To:Subject:From:Date:From;
	b=Y//1xrLF663ziJRYC5+AF2NIkx8k0B7kw8dX+D6MkvqBXbVhKbJFMw0StlQAtZePA
	 pnFep0zc6s2rDKZhR21uoi0DlSQIb5a7pjjwrlKp9NzoYidbJmBvKoApXhrca4fnB4
	 3gAFp5fOWr84VZf4ZGIetPxHNKL4obsfa5auC7+0YxtgY6rySPtfDAjKNk/7tU/bX7
	 1NJF3ViNlXU92nUNKGXCWARANq3x7X3tq9Yfz/e3vLlNZz08JMDFeiMNUJeQXmSmAs
	 TZvZ0Ya9hkf7yhXHiqAvMJNWHGag1jn16QlDueB9YMpqRSG0tDNyKSX3tcwL9aBwLn
	 lqo+/l+3ibMdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CFC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282439358.1554.17806824350155534931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6af4ce9b15d251c14f7d54e4a97d632c41f51fecabd912d80a02f4093e4e7cd
Date: Fri, 18 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752824393
