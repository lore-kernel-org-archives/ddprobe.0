Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9436517BA6
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754443195; cv=none; b=YQk5hwaQmPbIVcKGsuraZg/2sjVtZGHVj3wibw8ssbnb72LiKughq2HWAjGmwPZOYkbHSHJrPwvL3vaS3Y99gP0OBT0IWgD5Q+Owimosikb5D3HOcVXkJpEYpIugfY7Hto3DGnlnyPAm9euW/c4g93DmQkiv2FBexnw+9Bj0XSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754443195; c=relaxed/simple;
	bh=MJBPywaFZr/aWjSQWJhBw64GJGl2VDukdK5scTBsyhg=;
	h=To:Subject:From:Message-Id:Date; b=loMb00J1DORF3mD2lORYFqb3OykJVhOjmnW1ZhGjuI2YtEXreIRMbAOeOvhxWIpVg6kT+yMDYKGXlPqDv6oMq9882M/66h8FHv/0f/XTjJR2QMjkr5NjCRc+r2dgJ82vbJrCNbp7Xi8NpZamyZbn9vN67AQeZaF7vPfUlCEUOfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y111jyYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y111jyYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1896C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754443193;
	bh=MJBPywaFZr/aWjSQWJhBw64GJGl2VDukdK5scTBsyhg=;
	h=To:Subject:From:Date:From;
	b=Y111jyYgwcf9NnWC0Oy60n6jjjd5VYHpn5G98K+OVZbolkyEgaRxnHqpEmlaN48EJ
	 By7F0Q4pqzKvtUP5jyNQ78EW7W5opQqo8H11yWdaaBz4zdD/qsqa1H5dU51pzSCt38
	 +GRh01vfc6T4anOoT7F+A6VdXbNAi1tGjik5bTU9uLH/fu3VFxRyaOtKf9VCaaUumn
	 +HMZ99dU0WP4zpiW5PF3oOahYGOmbqHdFpZi75LcliKjU8UNZRTUThUVnIH9FypKWX
	 QSt8Pt6+icThzldtzbaOlxzG7s4w5w1m5WvFI2/Jz5mEjT4ZosE988FkxXNPjh9bSP
	 JmwrIn2g/oJDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F760C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444319357.22285.4390631347981786693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc810abaf5ea82c413cc138f92763872cb358afa8e1fe03e504e86b68df3d3c
Date: Wed, 06 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754443193
