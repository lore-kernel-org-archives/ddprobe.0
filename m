Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E633D56D
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716123743; cv=none; b=mQkAqwbTnTGcKipRoj7zP+PH1VCT+lfAuqBVcapHiQ5JrwSeSKkGI84WvpCIn6o9EGyB8TqR0FXm+RxnJ0AS8lJ0j0ukIQBrcLNnxe2MfZEyCR2KTlcQHHqlQZig/QONF8WGPYpWp2EF7BVmpNJliob6bbYStZMOXWD2HZFOvfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716123743; c=relaxed/simple;
	bh=n6n4HZjSRm7wYFkljgP1WG/5K6ASh3lA7wIWeI/MOIY=;
	h=To:Subject:From:Message-Id:Date; b=NTnm7qJBxLIwC+j5jdO3njJAGHxb+Ux6OrB6CZ682fcZxR2bdEsr6Y6bOp4mjoeoL+HLgKN2SNEMKbkPppGslPs33FJmEAWOfKN6WEoWdRtMjF1WhCju400Yqd1jjvVH7u/tlFX8KYTb/JRxyGGfUmuwU5pUMHhgRlmfLVnN2WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/Oe4bAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/Oe4bAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEFE0C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716123743;
	bh=n6n4HZjSRm7wYFkljgP1WG/5K6ASh3lA7wIWeI/MOIY=;
	h=To:Subject:From:Date:From;
	b=A/Oe4bAilUqbA2KJLtb8n0AfTNqv4EjTauROmB8kXPkamWWrPOpwjpzu7GddfM1IP
	 NSB0NklaxN4DA+6WAgUdHSE2wJWzdDCp5vh12DLKMmKf1eV93UuOqenYoLjyLqOJb7
	 soGWeHY3zn5KUPotfmKXGbwIaMhpCg6FiXXo1dlziVX1l4tEFd3T9mk96TalHPZUhP
	 LFcaAdWmMB1U4DgUzIzKFW26s+4pCEpI6BmEZLn9ECKVUQ8+LOvugFn0+iGTfiXvuE
	 jhQl3wpt1uXRTShy4G1ehWkfSjkwwl/bT4qPrHwdNKebL+GdmhkiohXt670Hr+hAkd
	 U+wkWjAT3YtZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3BC6C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171612374281.9217.1806389192851012380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6403202d95c3590e3396e3fc1a7676ac8169b219356a3cdaa51f862cda3d3d
Date: Sun, 19 May 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716123742
