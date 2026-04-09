Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2055A15CD7E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775716534; cv=none; b=FccdfEMp27VLOvx+oP5YKEcxA3SOxWyTsZXCyPMwIHkuoeqEfdaFK4ZcCL+1jdqqhxtGTWuN8TWNMyGM9UjnQx8O+0kp2OT9OOQgVoZkaeyhr7ohXBlgcBSCvz2RmgZft+VlMQjKqHMdqbVM/E2aY3JDizLHvQcf0yhaxeNb3G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775716534; c=relaxed/simple;
	bh=/3VwBqTJ1CRlYIQZokjbk/0OzR6IKNzcepf/65CtpIo=;
	h=To:Subject:From:Message-Id:Date; b=PpNo3gGc7h0p78W/D+I/8yhtke0ImYicKxaFtm/h4MhTlmhHO8ETdXWlmnApYywy4bIH4FTUfoYBgD9Y7cacvNnurDaWkQFWn6hvtPQB8HA/YedxAJFGEzj5YojO6Z4EO/lh38PGndKtapanGqBN+lYAUg0qCrz4tXTf/5OVqxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxvH0ZA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxvH0ZA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF86DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775716533;
	bh=/3VwBqTJ1CRlYIQZokjbk/0OzR6IKNzcepf/65CtpIo=;
	h=To:Subject:From:Date:From;
	b=rxvH0ZA17oPfr5W/1sV/rMI+KTGziKiDfr9wggghYQyS3ijD4k+M9b10doSDHQRHb
	 RHvKNo+RqhbV5sPySmztQeWroMduxUnkkBMt/dpNeu/yKhH32HNl40PRLqDhRPaciN
	 MYlL/7vqem6OEL1t/rfFlm8gsjEZ8wO7QVVGtOQieJmwDHOjxNJI0baZRmPQerQtBf
	 yov6Xp6XBIf3UuCh2fJ2oWEYShaUFNNYJltSVcX1zIwaEw4xn1zuUVcMeM9SDSULPP
	 L+iofjcRdWvMhraJDuLtf7p3mKnOEReYqWktfcBfTJwxKq7/VrlJBV/QlNY+EjEZWw
	 OG+Socfc7/ocQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8A9E98FD0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571653369.8888.6580415532684919203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab55856f31d3513faa5856b26d17324e8dda8d44f0555bc11ac878a8bb2aa596
Date: Thu, 09 Apr 2026 06:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775716533
