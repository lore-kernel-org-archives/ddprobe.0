Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3575214D70E
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752348594; cv=none; b=bYa30E1pa7P11rdp6JXUKFiQJdqrq3HrjA/7rq+L4fltTXBzpuBkryF8KlOXCDLmCf1MYSN6Q7j5B91Fk6Eu2HTc+FMmL3phSBjm05E6K01qUZdOfkiuEdjxMmdW+CcFKU4FB9O6w62HJ05oCBl/pvLnN2fwF9M5LVAaUMICvVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752348594; c=relaxed/simple;
	bh=82RKADPQQV+iFx4xHFILf/veQzb3LvZPgl2kZapcdMU=;
	h=To:Subject:From:Message-Id:Date; b=iKToedGFhXlzBITyDu52I961VFFTEgZ7BwY3D4NGAMuD2Ty4uoiUgbQg0qdoFUA+TS0tXCY24zIReeQTEQaKU/ZAl/McnLzWswnPB/+9++qrJbM/hnOeAis9LJPBMWWrr8iu6LWCb1WsAHsA5AZHgJUCLgoFLdD40ogdzN2cHpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsUO+mvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsUO+mvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06C5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752348593;
	bh=82RKADPQQV+iFx4xHFILf/veQzb3LvZPgl2kZapcdMU=;
	h=To:Subject:From:Date:From;
	b=GsUO+mvROafYadI9I+4LOflujJOoYq/gHXI4AdlDgvQEHiMcgERzNDV4oJ0c1zfmq
	 3FbJVHlisO1PK00Qq1XcxS4wXjoKBAvvCcUpF1XNrJZu1gGbE+NLxT2b2K+qlKX4Q7
	 J3zHOPgspGmUp0DxwyhjEZ27jEoWNG5pmconC37jdpvZc+pksO9BCr9Ij0DYSDVP5e
	 kaxzX0dbR9EuA/KxznSPycWVPCi+XfhsX31ZVh7UXzxemzSOZe14NL6E4rp+xR+3mx
	 5QLzKNM6z1SXv5AZLFk1f5lpJEo9uM4OGsQgwenGUgVFw27P2DxE7FUKrSyYVXZ63n
	 L4XK91qWB9j4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB45C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234859357.29242.4824068763447695119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb355a9f83656a55c20f20301f62b825d1fa2446a3a654487ec9184972e53035
Date: Sat, 12 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752348593
