Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F84C230274
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747416594; cv=none; b=MZw0QoHG5DefGgnotX0cPA8ZJLpCMmvyV7NibZcwXdXWFiPN8Zh9LWDeDgBNOyxrGLzPio1qOr6az1DbjbWlPfwpFLg+4v/botsX/L5vU94ZS1QukKxwmGdUwx0e9fkFanXmqP6dWuZUI/w2Va5QRGm5wlVVJWOV67sn/Bb8EBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747416594; c=relaxed/simple;
	bh=orIzQQ9PbU+FMz/0tKKdHg9J53vstyQPlG3SZWFBcYk=;
	h=To:Subject:From:Message-Id:Date; b=O8kq2XfuF2OD9BcV+lbyyZfv3bWNekrPBcQghXiYbDdX5vUv4pXxEpwpX6Qt0LuqW4TC2MHfKG2wTY75M9iouJJNDNokpphgfilW9pMKc9NIkCkU7S1iLOI4YAKWcW8lFJVu5gG9ImImMH7BDmwv6AVESAv1OcgAJ5OH5eyiWrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaNBq5jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaNBq5jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E93C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747416593;
	bh=orIzQQ9PbU+FMz/0tKKdHg9J53vstyQPlG3SZWFBcYk=;
	h=To:Subject:From:Date:From;
	b=CaNBq5jdDG3CtY32EDI0I7sqiEnKbPVhrqoGuGcxc7LtI8LU/zjHIs8g9mHyUgaHX
	 tYq2yidkD/rEGVlg+S+22VDmwD8bnsRPooC+Sz/L2PlxYZ4jgpG9qjH+MsWiB+lKlO
	 hbSx8wrXcsPEHlc/+B/biFjAQziJXRyagX/kGEYs5d2H58HdZsD/k7j+KartFEdMpU
	 iOc+Uy8f9YRhxfE6eeFrqkSwj6sGqUQUkPOnihRvExI27Le25BXVs8X6dOCegSMEWD
	 8I0A1L3XQnqv2oywntCSepWOWu+6Zeeb10zmah/E1nAdtJHJZ7ettchzlXI9kVsD9U
	 ivxaXPQWbnaEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F752C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741659357.31516.6399061600314285472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adcdcf77cde5239099c9bd98262bc23d5e7d6d50240172f64201123593efa15
Date: Fri, 16 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747416593
