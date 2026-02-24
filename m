Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02877EAC7
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771905894; cv=none; b=o7uQjVNSoQik8NRF1Vh2zUtQNhE4TZm9oIbwlBWhLQNLvorAhqoN4KQmzKkb6Pg4Da0rapEu6p0JR4OPIi7oTuEjg5SgFiVxR9Nte6o19xI/k0n4RB6hfLLTtpvyeWyQlz0DwjlGVFze+aumc0Cy7G5YRQ529SqiBd4LjbjyB1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771905894; c=relaxed/simple;
	bh=ZzRs1XyJESP7PgdF7yR28vpC5807d2bbsgdmMTBZjo4=;
	h=To:Subject:From:Message-Id:Date; b=TqwmBfjYqSnq1t8TZxDM3jCSw7XdC/eBQx2QpdxOEf22zbVIeyyuqswTO9ZuFniMhEVujgbyNfUK3YjnOR9y4tfaQ+cuOsb0RZmJ3QMn6dkWH/jwo+t7K1aFvvrLqeZ4lUGSTgj5fy+HXnWUOjMrQK6gEppMx60cUVStvsiygfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dW5jvQR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dW5jvQR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA8EC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771905893;
	bh=ZzRs1XyJESP7PgdF7yR28vpC5807d2bbsgdmMTBZjo4=;
	h=To:Subject:From:Date:From;
	b=dW5jvQR94vFlD6bm/YLttPzjNiahD5VLv/ddzPeUMy3qZY1+QnYNiYJU9jSCCCsyf
	 /zFjs3Jz6m5106mjb40Muvv3KGPoFwc7V+1FO9T8iuTiCBQ9FRC3kFj0UbZvN3Cnur
	 sqEpYlFitfIASpQCOdVyg5Xee8zX3x4qxnicOep8i5nyxm4gylrjx3VT08OkGHBqN7
	 gQQ0zsNYvPdhMLfRC9SNa60Aycy0hQhDgyPDrZP49WCRtNn6Po6mBhQx3em+VvgnHo
	 fTUZ4VDnbpaD+C6CfPlG0pFZMALIuNjAQLI4YuBH+g3tI6WSqK5lKcJbyaA/A6BUCM
	 /5DpUrH/ysEQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C49EFB7F3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190589358.22677.7611896767829261040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8fa1aa52d67b965d902154fe539873afa08e2b2b942cf60ed04a3dc59982a90
Date: Tue, 24 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771905893
