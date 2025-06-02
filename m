Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AA82B9A9
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748871594; cv=none; b=nSx8ZhIgVbjAKv7m8liODdveGl9RpDnZelCNdzfnMn2+3dW4H7vv76N1p8F3uprxoEhYLuIo7VX3B1nCzrOJeUyPW+ILP2XK0WoAB2aZ0wgZQC3oyU+eE+18YODJEbSaQpR9AK9R2qWzSjqDEX0uuihqK1xUVJxNlQP61+uSDKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748871594; c=relaxed/simple;
	bh=edSav6IFi/Ab01LyHNuZ+PqV7tKpw3sqpIL6z4EeiCs=;
	h=To:Subject:From:Message-Id:Date; b=TInkau+c2pjxgR1HHsmlBucDen+Mx+JqQM6JpREMYuUveX0VBALMNHhH5zWSRizDsoIiKYzW+5hT0i1hDXDlyLX12GwviaqzXTmph02/3ipuy1XtKD+0PlicaYO4QwAeIDzZWYMKm9AmuPtTMowpzSTSjTFtZ/hoTQTAJMyOWCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTUiGl4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTUiGl4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CFAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748871593;
	bh=edSav6IFi/Ab01LyHNuZ+PqV7tKpw3sqpIL6z4EeiCs=;
	h=To:Subject:From:Date:From;
	b=fTUiGl4HaQidpCksXk4qAX+SMf5s6Q0+dTrnt4MOL07UXigSjMXMBx5Ux4eW0HtPK
	 9Mp3ZpYSmZOO34UOelsgcuCxr5RmIDanK28SaPmUVNbYPoQe2nafcAmg0cBIYF9SPI
	 pwwM+co8bagCKKR72nj+TeI1bKhkJU8dOcOHXxmXFSqwm5+JN7ZWgNGbJLhCYqV0KN
	 Cyvj5RJaANpKMYhv7a6mQir2u7GWx8hEiJiTlVfEnzLJU0DtGQMkd1ZgBinpVlwOjJ
	 tkAd0jQxeFjtRWjJl9Pzp5mik7NN0PCV6eiM4yiCIbmgj3VAch97T42a2SDtR5N8wU
	 S/EyJABFn2iVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90089C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887159358.26681.14958418745591218181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15cfc72c5a9d7f77037d478b8e6fdee6c19ccc0b7f794ab517d3d45a047de6a
Date: Mon, 02 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748871593
