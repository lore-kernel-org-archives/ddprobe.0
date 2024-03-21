Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0532441E4E
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711004297; cv=none; b=JcYLHmwd9HTuZ7iQATQ1cKV8OP4aKZF0NKqIEuON5es+BREP45CBDSp+cQ79ievV8q6dKBNvIO4aNsV9Y5rs9lP74sd/Ykd634wDVty71sJ35a56G8hbBdtHVGu4XyZ211UF98JRZf/S6f9TmFhe33BJFiD9tIMD9Yf4lkuyKW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711004297; c=relaxed/simple;
	bh=b7iEmNB9aV63j8jvfMiivWMrCjRJEEzbzOceLcxjCtM=;
	h=To:Subject:From:Message-Id:Date; b=VMXRRsrOGE0Kv5YUl3onVX5LmFBNlhnbwz22FgioM1BKhzz6X8img5V4NVCysllUhGI9ZkmvSa3hQVrYasLeo/lgoR7/iTpehfBazS+s60/Qz6TubjZV84btTYYRRTxq93DnHFqKEhXT0tD7T3kI/KGRv6ZWmZROc5HSOCSDyTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYsLFZlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYsLFZlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FAEC43390
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711004296;
	bh=b7iEmNB9aV63j8jvfMiivWMrCjRJEEzbzOceLcxjCtM=;
	h=To:Subject:From:Date:From;
	b=qYsLFZlGnY9oABJeQKl1mV6e1QoUZunAWK7G1/rSjmZi2xAV5DRdxrne8VilOvNoY
	 pgt7lpkQ4D5GsFSNXVTT8kPRELl1gDn7VbsebWKAZ9KE/Zs/0iu4GCOifnbp5qPjXD
	 dfSqdUE3W3JwuwSqGKQ9z2niMz1db3Y2eca38Ed4mGUnZ9tZa8T+aH+mfLVyWm3wzb
	 MBtWKAxN8FqECoAm90FlR+/8FuC3uFaFFecmABGEUlYy7n9bvRiYo7XZlR4Yijxrni
	 C6Irvk9C6GdSDDq4jWXHtJihxed4Ug2BRcu9DYlDnvdc/r+dY1NUEf7s0Z7BNCOQ4x
	 s5q4BxJKVm68w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED5ACD11C2
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171100429638.9580.8719417438794588943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c17a6b348991af767549952995e30c36d1d1e1de8191be3c31597272cb0038
Date: Thu, 21 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711004296
