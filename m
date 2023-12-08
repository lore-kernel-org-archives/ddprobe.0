Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D017DF4A
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGVs8GRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D986C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702019296;
	bh=Iu3pr6Ma8jc57/tE077ixYv0okGfQnM+r8x8cnaQfKs=;
	h=To:Subject:From:Date:From;
	b=IGVs8GRnuAREvYAKku4fAc9KdzT20Iin5mx6/ahNxXufBQWwp86CAxctoJdstvxNX
	 ShOqVmQcAwBnZ0wN5UHONcQWzvLZy+k1OH8DRhZVZE4yAvIHhCj8OK9HJHhoHxwGJF
	 ZmQEtZZw3VJVe+OPqcsoHxBdEXpSy9lL7nBA7k9FL5byaxnYzG4k8KkXZsvei0YEwb
	 XpUC6hgf6P6qpKk/zXyZFvjZt6kNlqmMrttTdzqZJclrzAvPaNHq+MMa5ca9+tADn3
	 OpoPO1bBkungaWa6KU9s1ecBSa9ZqYOhbbRTZUYH0sQFgnREyzkK/y4kjitjG19UFt
	 PTYjiYUcBOzpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6338FC10F04
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170201929638.9413.3620222639264379234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700518c3497eb636ca688f79020658222ace25a2348d53ad4410db3be3245e81
Date: Fri, 08 Dec 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702019296
