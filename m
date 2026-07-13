Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59526126C03
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783906114; cv=none; b=OUciFJjyFpoEVab6iKdGodmAH/qlS/xN5i2lQT7+87kpgpZ9rCS+aWgKEZbYpgsSmPh1gx5kcNpGLDZCi6SVimAC2/cBbc266A4w5MgxXVDDlL3/Ram2K4ABBjPr4i5P5heNGjDzvO8eo/CQ2oCTND/K0BS8hfgk5H6H0A6D9II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783906114; c=relaxed/simple;
	bh=6U8NXqJcnIza/dvhFtl7jlgpJLayqABIbcSBqMRT8yw=;
	h=To:Subject:From:Message-Id:Date; b=URBPCJNANtoruF+3PNY6ytwhSrNV+1snx7aaY22+5KRPW146Ap134apdAN3XttGV6nrjqcWim5DFyxUJ6K7qXDHqM4E8Ir0cqzPW0B0lq7JtUFUSYpMjdeF7QxZ4g29rtKhfQS6hqLvynj+wVLSGEi7EL025ZYsszXOdqmJKTl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fr8sWDVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fr8sWDVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47AFC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783906113;
	bh=6U8NXqJcnIza/dvhFtl7jlgpJLayqABIbcSBqMRT8yw=;
	h=To:Subject:From:Date:From;
	b=fr8sWDVKPRxZyqipS2vlmBT+ofKjLIVORfcNvOipkrpBfOVSaQs3HLZDzwNq+zd9f
	 pR0JP4h99UDMYRJ+/nyvvZ2KbqzR88GbXHXl39iAEz4QzM9SsS5H4lzIViKcKN2fZH
	 EPCp4/3f+jwQu1kiWlTB4QzhlfSn6bj89IKLhv4efx8GrGxO07dBKe64cvur356fA+
	 1I5ma+p/3EWgC4NRttYwpLGfEzuMBZ9t1uB2zPjoUQvjPjJNxEJNoHwjHwHgM1VEXJ
	 yUR8sQ7m3aF0TQDQt7pYR5Hkm7gfYNYfNmgfUreIIWqpXXkuL76lHCg6Zcd1tKnSgR
	 U77pn3FeGrytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7F3C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390611368.32128.17055990396340691103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4d9fb3e87ced3654195225176b8adea458dbc3d857a4e5dd63dee3684f2d2d
Date: Mon, 13 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783906113
