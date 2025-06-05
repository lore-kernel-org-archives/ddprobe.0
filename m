Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA19B25776
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749091793; cv=none; b=CR92GOMfkgzEBM2AsDxEHVMG+3+ZovFWFgwPAlB4AU5NiClVkC5NFQ/SsFnBAQa57KV7XKm9/2aP+y0fB+Tn25dcu8EN+wL5klVgUZpADuT4tozYq1ND3gYgRXkzhVzoCiEM8gVNULorsA1Ufx0For2qUx2iVtIiHWx/4VH1JVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749091793; c=relaxed/simple;
	bh=05Cb1WRQ8NE5Jplcc+nQ7d60GYl4NQJjqUqGf6Z6ICo=;
	h=To:Subject:From:Message-Id:Date; b=GqY1SM7vvLwgCLAfZ5faB/o7RV/AGrbfs65HzBWWS8ShfWs8+kDaw5DWeKuXhYDe8v4kHuLVD5MCwRsNHU7dyPvPz3+fWj6oTwpWUTO2vZoWMIEYVtH/d/BOP8az7cjifIGjkuqHFRnqZRwld2L/bTqkdMdnp7Tn2Xdw4SCaq9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuG5ayod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuG5ayod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1755C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749091793;
	bh=05Cb1WRQ8NE5Jplcc+nQ7d60GYl4NQJjqUqGf6Z6ICo=;
	h=To:Subject:From:Date:From;
	b=IuG5ayodlzf9h8y7OgUn8VWGcn7X07Q6Qq0l9uxFP/5EUQSR7NcGTijcSADeg9ylw
	 Rs8S4y0281DnlNMMiZHx8xpKWMPAVYwXmjhc6lwY7LVw0cN+WL+UqW+agUQ1LTJFWy
	 D9Dwqhbvn93DL8zVZjFsMZdcGI5JL+92/eExnQv0LlvxpYo/Rqm5JKd2oK0qsM9Ksw
	 FkC+eviijNqSfriyhKfGP1wzmeZnpcwa+MKdyXlE/mDJ+WVviz8UlDVGfVhUdNmyMl
	 szJWG0aXsjQ7A9pNnSTJP2focFIW1psQQqPzVMd9ygti3Ak0pdz/BCv/ofpZYMwcJo
	 y7b6jcE4g5ipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE9C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909179358.3007.13472741450990075845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c021e625ed450595fdcc9e965096b867af412cadfb417fb73f0fc83c44299a
Date: Thu, 05 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749091793
