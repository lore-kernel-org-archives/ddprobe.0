Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76211A9FBC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778498433; cv=none; b=RGZhE+MInX0OIOXysqBGH3+EZnu0bNiWTcxGqq8TtSPrngbqIIcTy+Ev2Bw4dXQzYQxEC4Qs7EeAn7/IoEOee5dyl1htj0ybtsM6O1VFh20k8bhu0X3BG5SNjbxuiftakye7H6GrqAcopgHHB/ehskyQfUCvoNqP75DADEsyiuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778498433; c=relaxed/simple;
	bh=vFGdgrJH/QTywAl8nQ3zRmlOREreb48gEz75pbAXP+A=;
	h=To:Subject:From:Message-Id:Date; b=Lv3ltH03nAh2lnn+0wqAligyELYOUFOb7dcNlJjvqYBPqwKUxrUIQEETEVELKbL8GosQF7hfAicJIWnjTLmQF5qzrOBnkRpm32HvSxXq94WLaBVCIXwwEH/WDYfWQtdiqKDoea6heIuKPyDiIn5r0CXeL53eN+2zpLy4fwRHevc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpnPOdZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpnPOdZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3F4C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778498433;
	bh=vFGdgrJH/QTywAl8nQ3zRmlOREreb48gEz75pbAXP+A=;
	h=To:Subject:From:Date:From;
	b=FpnPOdZciLxkK2n7TmbQfAXEXAhx5BdfGUkaRcKckRXY6M+fNWAW8V3GZSNuuVAXL
	 wUC/oQDz2kxmH8+wpRJtko5Iv1kqwM2DMuDMCtvuhCGfzBG/gODJ6O8Ufsvh7+RLCo
	 AO0s+vP68cPIHnYJrUu6Fy4fJ3PEbvUn2XP+RnP+bpR35He8Hk6mZdpNDK7WtWLMSD
	 IhoQr9ykxSxb14OzXiEC9vKdl0aNIMkl//XfkjrbBgcfdpvxWP+64SNF/Qfj/8YxRH
	 SoRp+qJ7bTHUo9993cwYL5JmQ7rwb6YXm3nFAtq0JH1k/rVpqlWLJLzwsSl6TAwDPG
	 hUoQ5YEg2xmYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACF8CD37B9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849843368.3124.15443046089652351086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031fb1937413a85248bd6f436424a619dc3eb9951622c5f109c7ad88059afbc4
Date: Mon, 11 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778498433
