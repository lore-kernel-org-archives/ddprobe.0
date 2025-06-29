Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148C21E521D
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751192994; cv=none; b=N6jqCKmC0peIpZWndG2zPqU0Pif35yfIZVYqdz6Dp5JugocutLaCIusTcW3qxX5DsC+fT0A0cR2Xkdg6VbZ15Al+vx7hIaFNe65DiEHAghLpua3WWaneziZmLTU29ATMPF5k0RGzo/iKQ0S2yBfPlzjzZyD4xzfqfgZD2D8H0ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751192994; c=relaxed/simple;
	bh=N3BQe9/sk6icP4dKcyF9X5EsQF1xEp4Fko4ZUyYpweA=;
	h=To:Subject:From:Message-Id:Date; b=ONIuEQL88SqrvijCqVGY6us1K0rxOHpm8BV1V5a9JKCZTzk2HNEX5pveeCyi+gSTH/9HuyvGu5QwFXx+jgOaQZrxFhNv51e2X79WBr27d/5P2Bn8arT3hSjwI73E0TE7A7jTaqOY3AYo5nrCH6e61J4gZCdgJTzY8BOC58TO7SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTFWmY7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTFWmY7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0055C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751192993;
	bh=N3BQe9/sk6icP4dKcyF9X5EsQF1xEp4Fko4ZUyYpweA=;
	h=To:Subject:From:Date:From;
	b=GTFWmY7/7P6NclHZabn/F9xwR4shK3qq+vGi+6Q+3kJLgIubJUL6TZW7CJ0H6dYuE
	 GsAepe2DuFugpn+CpDbmHt96eBAV0SBYNO2VYji5zjGVz8SwMbeifFHnjuR94eByia
	 RDdOC3cT0ZEFhCUVUhy5PA8h/4MfnBAlWZ6R6OY63duT8vWV9Yj/pu9NTteCLi+f3O
	 /I9KlocgUsxYyEG+wflTZOXmjmrwe3+HoscS/+HVE54mRx3HBhudBm7Q9ubm7+3dGw
	 cU5WSQi1VOeU5fVPLPqxFTsRUMsYliKhSL/BFBBvIodYGKDTmHlvurPyVTzBh7e4Rd
	 Rr8uWCdEdZjyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B2C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119299357.14470.14198494684271512556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feebc91d87f7dfb623cc9d67bbf324c4efc623355260a75061181040b5dc7865
Date: Sun, 29 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751192993
