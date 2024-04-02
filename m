Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5EF7FBBF
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712068097; cv=none; b=pZqXxsMMYPYClCDJJkyjFQ7l8LIInnFjUsfsebY1xo/n9ehDoJkSGdplWdierSW/Sk3ZWuLzZLWHZgaABqBM/6qa4pmIB2H0S45DHzex/T0w+4LT6DYscBmdYzrl/DNDaIuhYvld9ymsDJogYumrFhgxzVqb1UF4lGAWA4FmUto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712068097; c=relaxed/simple;
	bh=9clJbPcLUbtEuPCP+gPVwGmawuWC8hS8/OPIB/oH20A=;
	h=To:Subject:From:Message-Id:Date; b=eBhqyGR/xT5GUS2GQU1j3kTHiF2L05kHpekSA8c+gbGP6O7CbByZbgzJHL3FUD9uzaLWS9MhIc2tu1gn7MET7/uxIf568GMMm5xRFatCj8ckjMnkfO5lYgwnvhQGRof/HcUmiEiX4OLZ8E6l+3eWxuu3cyINiJkZ2qEDvLAUFos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2J8/DYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2J8/DYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 728C2C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712068096;
	bh=9clJbPcLUbtEuPCP+gPVwGmawuWC8hS8/OPIB/oH20A=;
	h=To:Subject:From:Date:From;
	b=F2J8/DYNr2ltgTOcVaawyScKQZCxYPZ3E9l5r2HAgbV/N0FMQ/I0Z5fXkwXDLFPnz
	 1ARUeSU9aaXs2E9YaYe3ANjPS3dIJJttIXCr9OXFj8Inyuak34XDg7E3XXAYrjtg2G
	 X+Iaup0MawLIPYdVXx4l5bQszYmNDtGRjyHFeTHj5mTA32Cm5DZkDXJ445UMfIV8rC
	 JzcM0CV0LJHfobtAKv5qy5nAv48AFP9ZEG9s2j0sK8dcoB05+bxCak1qKYi7q0rAMi
	 YWg+dXltRWBY0Zq5zWhPgildw1Oy/zRlT1PPBNmoCJPn3MOLTX9B4w0JnI7dPK8I6O
	 v/MVQlz9bs1bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F8ECD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171206809640.3335.3165947267910489268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943876a8626efef9fd81f6871104402b639c907bd4ca45fc4de67bd676137f42
Date: Tue, 02 Apr 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712068096
