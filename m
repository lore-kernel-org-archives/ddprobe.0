Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172272D7DF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757921994; cv=none; b=hlxHRWgZhU1tx+hRA2rUocnrQ+mcCxW7eN8tqAIPQuOKqC2wH6Vi3jLiFc8CGtAr43bmglvThnlkpb5zggyk87jacm+O8iaklHXAk0Fb36w+jGmzXO1l3m7iuMwWN7TcWOfnseM9YpekR18EtyNJ6Hl1VYEqPmb+i6R1+wI0iYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757921994; c=relaxed/simple;
	bh=qvIQ6oTWdFDXN+WxT42kN9C/iWe9GBpJerZQze9qdOI=;
	h=To:Subject:From:Message-Id:Date; b=PVrjlNk/5fLkdTKXMwiVK79pYJd6CuuD8e0z/6zfcajLbSkRakMLygJ8O/TDYmiwCY1SiGYrs5i5T+EZpSt8Ch9SgKhAI0T9TWSMmhRRQvW5KX0W3ghHCkdVsxhT3q3KLjqcrwWpqBaoPJErNPWfu7rtUqPLQFl/EiAKygcUUBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWRFqHHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWRFqHHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757921993;
	bh=qvIQ6oTWdFDXN+WxT42kN9C/iWe9GBpJerZQze9qdOI=;
	h=To:Subject:From:Date:From;
	b=kWRFqHHEcaQ3sWHqej4LAAr3l7xTlt1H8hiV/ICkqEhglwZYSa7qc99Gold+RPkrf
	 jUT2P2i+Y1n1lZs2IPpXIkP3r/C0QzZGQWt1vj7f0JI1haF5AAsBoUtgO/xRIadFnu
	 wpwsUd8yqvG5nFmcX0QY/r6dOaG0Wt1jGUxxsbGFb0ghELk0bJZGVOtjQjRlmz2Ppa
	 hQx2pd4WaKK0dYLrr9CZquMRUjGDYoFM7HHCjxjJ14mazISaoEY/u7K85SENPwbomX
	 H3R7U1c19/47F730AF4u1wuWLRskKLZO3BlzjuWemDLCsh3xDZBu/Pl9SPgrNPect5
	 7lXFFx4mfYVSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F4CAC58F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792199358.20776.14501083377096649701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff22c752336a30db0881dd073cb68a9f779ca95ecd19956ad2042613a30a2b5
Date: Mon, 15 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757921993
