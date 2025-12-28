Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CBE145B27
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766914434; cv=none; b=d14E+TbOSKWGzTQBa2M8Swt5AYguo5LnhQsRxDHCiorz4hJqr2rRzBexryTt+BlEOmfIXp5f2Zq1POt1gHPHmInUqKhAZ+5s8Urz0acVAbkyFSvjaEcrGfsGRH5nRpiTbW555cAUhwA6j6ShN3Az/5MQVNjCxGJm+LJspEd6p9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766914434; c=relaxed/simple;
	bh=Sf4cIVIe7U9PFiVRIQJ7qMa5nQHm6Qfc32Rd83r67AI=;
	h=To:Subject:From:Message-Id:Date; b=hhkR010ej5vUREGRbYVcxq/Z1f258twokrkVB4bVKFyMuCy3z173idUe0Yuh+a7a/LPXBKd6u/K93FvxE3PAWQl9wQb3jWxWPe8mETCFsOsMrQi3a1FuHZV+4v4DNIZSzKEpuW9jIFUaO5k7P+z4ny8fEWqz2ePEeRog/WUcJ28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zb4mXCqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zb4mXCqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB283C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766914433;
	bh=Sf4cIVIe7U9PFiVRIQJ7qMa5nQHm6Qfc32Rd83r67AI=;
	h=To:Subject:From:Date:From;
	b=Zb4mXCqTwVgU8ysHEHbvab03ehLCqA9zTq8l3cMpDvTEVRdDe8qGje832RzxQtEPD
	 O57V2Ta4RCmIJaqgL7yMFLljXqmeYmoWZwtvaGdGI6li7Dbog/in7FDIeIn5icBwmv
	 rn5HMi+mddej6Yf24iRK0Q4YCIITFZMa2aEYHTe+kXM/o+zf2N3fLxyyQNGg+keptT
	 9NLROJnoETPzXQipxpqK4G8cANs1ncJhIwNZU4GJx9fQj/VcLGv+GCMnYsMsc38JC+
	 SEY4e2zOfhakmjsdZEsJbwiWfsQl7oiQ6DFJ8KVLWHwjgW+EaJVphP8527ifeaRPPE
	 oYXGcjkPKSeBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B9FE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691443358.22971.14032131270117191682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4056c054a3e1b809e276d2424c12800335395a70c8f6b91a0ee9670f50cbfbd3
Date: Sun, 28 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766914433
