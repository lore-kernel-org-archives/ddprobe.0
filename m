Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F9627FB1F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768730634; cv=none; b=XKcwcBuKjPMMHAIsdID2M7bb+s+tl25Nq02ecZfMk0IvNQJXKjC0iB39VmNb8kz0jEFAQPRNR9Of4mEzF0yRNWCqkFsDZnL63I1M/+krtyrjBRPqtDCEwwp4MFANdeF1dGhyz+dudT0YWbalx1RIzuyns6S9NvhnSZkbc8L00jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768730634; c=relaxed/simple;
	bh=GpEW9a6VJ6Ag2701gCvw9O/xQAc8WHEi+W6u/l2MhWo=;
	h=To:Subject:From:Message-Id:Date; b=BiWO7ZK/NOqvzV9ByR5Ms/oZzHHI+GIoMOH3+UbrdKvlCMDz0JRqyht0Bmqyul4iwQTUNGA6VbgE6AdW+jTNDHcP4sNeCPpM92nAY9EfEJsy844cKzli8pO3g5fG+Q3r8qU6dz/vKoGc+02SpqNhuxJn8Pz6LJytNczMzYKCLNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijuqro1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijuqro1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BBFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768730633;
	bh=GpEW9a6VJ6Ag2701gCvw9O/xQAc8WHEi+W6u/l2MhWo=;
	h=To:Subject:From:Date:From;
	b=ijuqro1TTq9jb3RO/THendaXGGPpJTf0wq/UA+s1f4Q7YlDa4V6oODiYrQ8uOI9gN
	 /3gU1lbTDTscma+fq43FwBvGvMGF2VV7ffTy551m8l5p/KLgwY6z6LFXGnFzpdJkBu
	 OYC4Pj3Iw/fmPg6tlBads+lu6FMRr8BcnnqBwFBW+bBZjwRwvs6eoWACtbftQGIFCQ
	 RqDRZshJv6k8zMRjyWI3SzWnv7PisfWYNCbOLjEYds/gPT0m1uwRXXBBcu/624aUIc
	 +TcaqRKEizngbIO8CxBZ2+NQOmHVg0vHg45nRSoqveG/OBrK00rcA21G0fRdPwvDM5
	 JLNPUPs9zwHOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DBC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873063358.25457.7946736766334571747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e74d70eaa81958d3b11b57e24ec0363ee61dc4057543c04898bd23240266f0
Date: Sun, 18 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768730633
