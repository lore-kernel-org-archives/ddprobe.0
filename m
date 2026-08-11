Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624B2367B6E
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786471834; cv=none; b=Qjafn4cxd3MLS2dICRIsBqaYXGWfOobLrG0HBMq7zq9ZpMG0Rxa/1AtU1uYfJmU7m7VjKrtNhDkfKzhZ8sfP/RUz6Gx4ibaJ6MkjJcmZa3QTtQQK4xuJVvltV47ZvEVFwzYRZfmfSla1dbVrB+tqsuqIYxOFOzo3V3X9SdcL/+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786471834; c=relaxed/simple;
	bh=xZ3/NTp+AQ6/lKYj9Ld0vTcSe4MQtyxEhtC5HNA6XZg=;
	h=To:Subject:From:Message-Id:Date; b=qric7N5zn+ab8KZEdjmgqY5nA3nDT495WWo44ghYfXdzFH1is/mbLZtQNMsmv5Eb1Uk0jxiCZxBwRgNU5V4/NUb+6Wch62kmKnHKfmMWDbA5EHc0s7Sevgg6iYlQRNccRW8D1sV7lppx98NN8Cs/llz2OEbdAkRxa7DqA+lQ8YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DP+62Qqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DP+62Qqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E81C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786471833;
	bh=xZ3/NTp+AQ6/lKYj9Ld0vTcSe4MQtyxEhtC5HNA6XZg=;
	h=To:Subject:From:Date:From;
	b=DP+62QqjjqI+J3nZLbqSZp65bcpYSEfq0rmm7EMJgnB0KhQBJsEpTwPzd9+c/NTWp
	 aEGB97KkLIVFfD/m7tON687HJDBWfbsKORtYhYe9lt9eEXsutNsIiE4L4sFErZJFmq
	 jkWNGBXbdlKJWC/rk1S+j2DlJ51eNMKcoM6jmGnJ3Q7rvPdP+DghEeuYmcdh7jMy0p
	 dYA9XM+Kxk4wV0qfam7NkWyanoW7ZJvpVQmdHPQcZwKpgndmyskyQXwIt6In2r/U+o
	 ep8NW8dS5DBdOLWN3ponMc7H2MGGH6wi10a6kQ3ErwtAgiBhmwoRtmIcOHZ+jwMDHI
	 J7YjB5QmXHGIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE01C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647183369.21078.14871224719525259672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a832b585c72eb33d4068eca728bc5110c7eadd99cf747466879e5ec1c389bcbe
Date: Tue, 11 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786471833
