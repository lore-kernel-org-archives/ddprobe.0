Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC574C14
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749489594; cv=none; b=f0SniVxqJxgMJqaGKXWCTTKICti9+SUYcY1mWuvCo1x3ZAlMOCSHif6X4YAg5EJz/F+ok4i7EYmmqE+fqhm4DJcVSpBKUjkLlZwlgl1j9bfd2INC/MGkCJKjb+rllVJ6afYM6A3WdXLquNjOISMXn5MdL8UIXLa+QurTb5QgUVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749489594; c=relaxed/simple;
	bh=hiJeKBwVdc16v4QS31Vi4rY5lW5BnOsk03H+/HP1eNI=;
	h=To:Subject:From:Message-Id:Date; b=hZUGbkaXieCzsj2bIKp+9An8hJ1z2Z3jlXaAtQTCV3rYMh9eJJBCYRAkDOc4qq7TaZ84W0ZdtcO/8C3UGtyFPgRlRSHxE8TNvp068Kxi2iPDvi53kCyWHj1KtBHRaRIGE9Y0NvZk9Y/Kw4PA/bZXIjyHcPO6R6Jij5Q87BPc/fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWs/z69C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWs/z69C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3478C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749489593;
	bh=hiJeKBwVdc16v4QS31Vi4rY5lW5BnOsk03H+/HP1eNI=;
	h=To:Subject:From:Date:From;
	b=aWs/z69CZzXRsEQMb47jrjh3C57oGGmNll5G8ZvAxUfZRoXS/+TaUCvWxSWYlQVgy
	 KVbCZstI3lYzD7KN2Mw/pZTwsXwyaBtsCQQpx1mQ3JMQ1ViAvhnxmuuyhOq214iDrM
	 PkoadW71pJLox+VShpY3/xPjirw264Gahn0N5w/mZJ4EI8YCQbS0eKrfaf5D1GGTL5
	 YMhqCpGGWdZtqmZGPVFO4KCuC2Dwow8XlwWnsYnVyKy0faDyB9P+Dn98qdY8ht6Rk1
	 OndhHRshz0ArTN17DtHuZMWTi0FM2BqZYv8rYJ4xc7OFuHPYZq2Drhpi6bj4CK3xQR
	 w5zyj8p4e/7jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF2C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948959358.1573.11534039510715531709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb605fc71c7a8effce0e1fa37ec74adcce92eb734c9f4944049f964afdeb7c13
Date: Mon, 09 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749489593
