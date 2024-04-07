Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32A1747F
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712473697; cv=none; b=chYWAhJ2jC8NysbAosbYpG9iMuGz+3+7GnpwC+ON/6Fl9kRjyrNJwE3qlOu0R+vzTAzfGnAh80pvXoECv2pbFA6iKIv4Wi0HZoppOU43GJZqY5OE1dD8kxlm8hPN3o1lz8ZMA0INGQnDfvLD3CaSuhfFSWo6/wkhTuDmoDf2Th8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712473697; c=relaxed/simple;
	bh=grOIC+tLmCPuvkUocWPGqtPoPa7sLGqHmoDd/OIlO7w=;
	h=To:Subject:From:Message-Id:Date; b=cacGjxic20pImcnmB25X4XzLdznB5f+VADhH/CT0u7B2U7ADyFP/+Ta0BnRiN8x9UY+6xFg4yjzPpv/l6SH6HqN96Tt8KZuRCN+sI1+7OpcmO+dFepBkgfbN3WL3UBjWUvLZTBWHEvJkJopOYZ+Dda+2bd7bNK9bG9kMjH9go+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3oqeD7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3oqeD7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE7DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712473696;
	bh=grOIC+tLmCPuvkUocWPGqtPoPa7sLGqHmoDd/OIlO7w=;
	h=To:Subject:From:Date:From;
	b=C3oqeD7AruRzFzl86HJIt4Pq7IFN1CFBFiv4nMNif10iAxz5BdAia9+ffkVTKsxpf
	 lUv50pPCo7cg2W0GPaGT+b8WmezBoOqxGrTR1AHJEdCuzZ8v035ylTBF4NssVj1WxF
	 C6IKufjdnXToTEd53Zta4uy23i5cPcV9CnwQ0NgwkaBURyBYDzkKXvWDbbF7PEzWCV
	 /EoNhpPPwOK3+a6rXOyteAgo7W8p/ETinXxKk8lrCnwMeStmYiWXgz3w5GjH/FQcX6
	 /QAMx0Ddiv37U+t39F+TPZRjhXuCXMXhEIpkfPNfbceI26ebyw9kHlo3tza6qi1oWD
	 lrOlxH8LqQMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64AE2CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171247369638.15244.1555512793686740993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0fbee9eca3e5fcca983bf4f7a7eb846c87e4f7deaf4a50ce31894fd3deaec4
Date: Sun, 07 Apr 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712473696
