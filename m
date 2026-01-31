Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113E61E98EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769840034; cv=none; b=oRZChBj1zXB8aL+u52OHLUpT+GWT5CsOCGmLXIS4+gRs0YpeL+AHDKUsDf38j2accVn2yVnJ+vrGnfjbNrcxXFWrGdOLf97DQFA5UIJTcmAEBtHaq4qry4GSzraUXYTuj67UtJCiVlJl+vHk6yzAdU2A0UMFncyGYCM9p7SGDJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769840034; c=relaxed/simple;
	bh=crdo/rjWSGNA//wAkvdqtWt9ezNw/BqE7PlXCk/03Qo=;
	h=To:Subject:From:Message-Id:Date; b=MBk8kv9I4Iz5FT9rroscVey45kj1CatgFOYVB2EO2xxncL1zFv/6Up+R5xfye8RnlPHbTPP3LntHI3gc4i1xGR88hvuq6yTErv/yvmIVwJidrL36CO4jJM7pl6ov3+lGGFy7jHpO8ZsXFY/jV2+RtgO6V+iQsrH2Kt3Er5wv8jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZojqiZuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZojqiZuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7352C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769840033;
	bh=crdo/rjWSGNA//wAkvdqtWt9ezNw/BqE7PlXCk/03Qo=;
	h=To:Subject:From:Date:From;
	b=ZojqiZuqJ8koGWURO7p7zqqwaNHcpQNXDGsxKfGgoLK/dMEXL04FfxjrHKt4Zxraa
	 pYojBYsqriuIJp8KPpXWHNkkzSOWgY3bk2uRXJWxmHQJUGicU15rpUbyo7Rw0qXhpn
	 yDIzJ6iOBVUoVIT5+7qGQECYjGkaFNHDCgItPt5ceO70tDveifTgBKgYQK1FHip3GB
	 gpa+GAGKuYJKz2EWAiu8LCqWzoC/Ebi0bq2j9YbceyIlCqOdtoEh3NYahF1AzEp8Ir
	 e7JnVzPKE4VrPPO7kZn4chI6dUlFitFw5OEuK9DkomlN9qQy4UsDqoLxFE5/l6fEJs
	 ZK7lQmsUSI5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9617FD79740
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984003360.8458.17110222388965329790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ee419b71cdc0b2cc8af32160ba97bbc158293098c2e18cba1c5d62b4d1fa51
Date: Sat, 31 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769840033
