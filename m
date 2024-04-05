Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE5B16132B
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712316497; cv=none; b=kVaZ7zU/x4EpQ6bXvYMzkcQ7WMx8GolZ+XaK+R804LfvG53lH3qs4C+QxQmS5qkoexw29ZcMyiBnafvapZR+xa+G+IDIzH5rV0Q3tkfTOSoh3tsg8paLYboKCoOWPNbNaOIsb7RAJrOL0/RCEyTyqkJWmPTv1bI8JbtHlQdmD9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712316497; c=relaxed/simple;
	bh=IRVCGPSVWH+uEAvX4quaVz91a5QmA3ewFR++KVxrq40=;
	h=To:Subject:From:Message-Id:Date; b=c36G7eoGlyaIvTSHdX6UV9KKQGWP7v53FKteXLX/bwEpbDdgHwXiRzoXBW3y5ae4t3P8o8Ea9nPX9rWM0wL2yzYw0MCWGGQKm8NDAAf0k8W4ASvyfKuRvZZZkFX8CjZY+wucb3rBLQD4jLvdb2ljVwIiMNSEMeYx0q5bXQYUqc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6pOYGml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6pOYGml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB0AC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712316496;
	bh=IRVCGPSVWH+uEAvX4quaVz91a5QmA3ewFR++KVxrq40=;
	h=To:Subject:From:Date:From;
	b=N6pOYGml/wr0lh5OT579Zxgm4FwE8mufFGdokaDeSxx9Cr7taHpgLKwdYdgiPAEg+
	 B6eu/sKkMTodUV7EOiBSdqxVWKxyAjQ0AVYzvNhRtl3qIKqlt4wPtb4N5T+WaXQOfP
	 /w52uw4VXjGwiZxXh3As9u/fQGsZA8VrZLwWlvfjBPkrEk4ClqhTYQZ9KY0sqI7U+i
	 iuMjU4PVMNcNmHZPt59UsvgQbyXTqjM5iSvWvT7Xw3xYf7jh7nBHLniOLOYXxBWQLD
	 rsRCoNKd2oNg7sEYTNSs3vOnGfWfsqEpP6/1rXa7hUYzX/I7Zv20wMDofutyYLuC66
	 hN5nUdlnmqVDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688C2C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171231649641.3229.8212704928485349554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b6844643485be2d3eae7ca11378640793369cdc38c1e3efdb251d7076ebf6e
Date: Fri, 05 Apr 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712316496
