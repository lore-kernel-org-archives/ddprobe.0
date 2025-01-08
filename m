Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B88A1537C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736322354; cv=none; b=EZEe5kgx5kKlM/u2tqwnWIuDcszt8YQDPN0AVqeQaj6N4g0TVCQ+KebqPgfQcuK4voZNuhZX1do4yNcaqm0qH3lTKjaN06KkG4c8pvkWl41ZnuFdJE2EJ35RhNWL8LwIikRQlQg4lp01/H2M0+zgyypvaoYMqWSYw76ZBFS+v18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736322354; c=relaxed/simple;
	bh=j0/tSCr8HVRd0mK7gT3sx2ZdY1U/6GemUp7iPDCNpSQ=;
	h=To:Subject:From:Message-Id:Date; b=ICw+9Dhs0+M6NcqZwVOQtt/3kHj3Enezu3ZKbAYDMKo0eXjfiCGffWHym/+SJ5rh7VWjN5xAC8ZtKHPZ523STjhLJFalQSqhEYD1k/LJaf/k1Dar3K7Pq/g33a5Q7jzwtbQrvnVgCHTE+4peTIWVW8/87txpR6WcS79l69ImYFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx5wYr5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx5wYr5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6E9C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736322353;
	bh=j0/tSCr8HVRd0mK7gT3sx2ZdY1U/6GemUp7iPDCNpSQ=;
	h=To:Subject:From:Date:From;
	b=Bx5wYr5ZRK0Gd2sOHxAgjrnhZ+n+d9AIYRlPnalsiosEsXEDrywKweoZ6zl4FCGxT
	 3pPBC9+onxvoyapiMBjfITbjI/NBzG+XHWKSkq/R4kDC+8dgo4bdm2s5iqoHDLxNPa
	 EEENyweFr5TAR4ALDnIbVzHtgOqJ23go3WcyaCMhL6Kg4l41cMGlpqxuoBg0UH+btp
	 e0RgeqUyCOA4BrHsmiUiBNCeX3rHg5D4EqG+k/tP+3tQkWjitFMhOYs6W/+G7UFKjP
	 sAxjad1cKzJPHvmmbM8FamUPYjl7liGA9IQlZRXyKBoonrQJtykhgiL9CS9GxiLB2v
	 2B4fwovIScGGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C391E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632235360.8358.16946886935546010785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c0c571225b4a4e18946984e942fba735eae6acdf2b78310bd691899ef2c272
Date: Wed, 08 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736322353
