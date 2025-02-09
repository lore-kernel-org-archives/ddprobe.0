Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625C014F70
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739117754; cv=none; b=c8nBNdvlNeynr9/onmFgChU+RgBYYaKQwbLKsjVYcHBb4SDATE5hNwQZcbjC2umFUrzgLkPUw5uKU4VE/QBi/hS5fbNrhM6kmyp5BOjic9D1vfIi8axuNv6ejVpXC2CMriRwCp6F4PYhhiDZrH4tW7MHvsmQokzNjQdRqU78PiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739117754; c=relaxed/simple;
	bh=nMQCNNEMhB9Xerfd9SxpVe7Wt8Kj1SCmiFP37uNP7kM=;
	h=To:Subject:From:Message-Id:Date; b=VfT2WCutWtqIYgzpa6HJc5LkFUO7oOE6K/liG48XzaeO6cRxlOAstQZD6ZmmAfdIi+uf2zDkhS1iwQOgd3IrLKLPRgw0qFaZD3odMaY+ExKnXXejYCTpJyFYwlD+h6YrD9jVmB7MpU5YYWOvpgEnwcIQuSo5a1rqqOvUDzLTii4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F66PcaZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F66PcaZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D459CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739117753;
	bh=nMQCNNEMhB9Xerfd9SxpVe7Wt8Kj1SCmiFP37uNP7kM=;
	h=To:Subject:From:Date:From;
	b=F66PcaZfkrDVLk7w4pjmzIVIrZlQKuNwvlY/3MaT6wbt4wi/e8WPzqOZUSOrMU9Gu
	 W5eiugv3Nv4T3VX++zsfJo3Z3xCc5TbdvHoJyFXasz+A0Wr315E2uiLkGQUwxExck1
	 FSMm+S2C2PYkUpTN0m2Qs/kbxfh8Dqb9GlJkbmHuTPb6mhIUXU1yYuJsY607Vl5Ne7
	 EhBvqK/EcXaQScuXQytFejXaEZUu5gHynBhiR8FstVpgJlR9YPonhW8sNa/VPoyCCP
	 x5WWqNug3OGRDXiXQ+garpmIOoF2xBWpsqzBCHjfNpMXl7w5Lm4paEhOhoP9dj4xBj
	 ahbe2zhTMPAAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBEDC02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173911775366.24516.8582285418704376595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c569e9b8e6da76a0460c4c21adb0ba081419d615ee77fe9646ef86296420a31
Date: Sun, 09 Feb 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739117753
