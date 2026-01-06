Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E8E3502BC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767726234; cv=none; b=NKjIQ2V/uO1azLfFZOajeGrJMrWn1htOLzJoiono07+JwhhUotJbiD9d1Gf78iQRLSE9tGbiKI7RMP/GzNUKmpYrSALEhtq5oJL4a5eYomn3/vXZ2ppe9eVbhc8e3kkYn22eSH8SdvjzhYkkH0yW4evIdBYKhga6VcQw839cMCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767726234; c=relaxed/simple;
	bh=poJj+shQ4zbJjgU8kxnl1x6LdYUiFQn0L49I6Mtp+yc=;
	h=To:Subject:From:Message-Id:Date; b=LC9Me6vEiEnehpsvN53QpqQi6w+tedgOPck8/iYXtKyu0OqONsHDblSyOoqzVX5rmiqpstGQv2fd+xDUG/u+FB8lDNgNeaCRHSnv5xCkmXWwUOZJJt9j9ipCjQqhlzF0gB3CTZHlvDN3HAseZmRDbHR4RsaP+i/D75Xcb5QXstw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYHpPKTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYHpPKTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1971C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767726233;
	bh=poJj+shQ4zbJjgU8kxnl1x6LdYUiFQn0L49I6Mtp+yc=;
	h=To:Subject:From:Date:From;
	b=YYHpPKTk3k0q4ecDK5LzTFQVwlD7tf5nkScBTrdM4vK4ZDwvDjaU0uBOPq9aTknln
	 B72YpoweDhuy7yQ4YbBcmRO+zX4BdyVaKsRKWZn0TK6SPt2Hkhf5MhU/IIw9CaBHWH
	 wXQijGyC0rOl5jTgAJJg9UPHm22dDYrT0s9plWpldYGK+4IaKEgLq6Iwrc3WmyysDD
	 9sxtuuzPNMeU9I7+wY4h8fXWgLpj7qG+Dg1uy7UPC8Q8Ij+QYgjpkTu2JrewNKrPLC
	 PMiuvc/3dGjx3imlVLzjbJjOKeWhsXi2WTg2TzUGB3UwBaZiY87roaO3dUFOKxXgql
	 uzxg5OkxVT8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F8CEFCEC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772623357.15871.11509520006325550664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca5cd259000e46c2a3d5ac558bd5169fc8cf44d18826597b58d9302fd788457
Date: Tue, 06 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767726233
