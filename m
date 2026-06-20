Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6319E348C5A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781970394; cv=none; b=ZM96EYv8kciogvxy/apWkREG76VCQLI904vLgfwGyn7Mrt5yjp1OvQ3kbeZr88V+Sz6cUtHYNUfH/ZX5B2Xu//lTqCqMt2Yl5cRymR26M9ddKp+988c+TeGWFasqGI2WW8UnF2zfPKZUxjp/91uFBSvHjhz5eNgK1kYvUn27Tgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781970394; c=relaxed/simple;
	bh=QZUPWfIF+s179DZXB8M8ZJHXg+hcqAjTbyIVS/pzgKk=;
	h=To:Subject:From:Message-Id:Date; b=CY7Kv5ybFxxohvPYXIFlqxOtseFYMmVBbAIxeZqTn/tlAlTp3w7UOVAprBaBJZBHyaurz6VeoO+cx3h/KMHsd50gLjm4y3Hvzy5hk9J7S7Im+SxO4+aYKV8A9m4O/rQP1W97PqqEq6lZTDyp2dgpxEQg5gD4HTHkJf36iIKhlGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj3+BoNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj3+BoNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52C5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781970393;
	bh=QZUPWfIF+s179DZXB8M8ZJHXg+hcqAjTbyIVS/pzgKk=;
	h=To:Subject:From:Date:From;
	b=Wj3+BoNTfNlCskFHRTISsCq2Op6kJJvI8KwzkRWtnjYYZ3+hb6o+HDO5y4DevilV3
	 Eq5SNVC+3mqwr1wcCvmFO4lmcBQjPCZfZQuvjUu5GqniO/FSlLVj6jwRGirl6QplFn
	 HaD9z9Fu5u1mRhagqOWPuroKUtXnoRw9+rZYW/vLs3Rg1+0vXhCs6Af4QWOydCKaY6
	 R+ELOEAMkUr9E9Bb/WBe/QU7NIjWK0ut+XhmOUdLIt98GiJOqZlTk/JPC1eplzWVX7
	 U1OmoAItw9SWYUBQmgaMxxEUo7uVIAxvz8H00dDDHE+3wo2UW/1i6qVL8ODG7+XhoQ
	 Tc3FxZYPRmG4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AC6CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197039370.11765.6059400949569516017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a853216d54f711e6863ed64ae0ef321d76a1f889f879098315d0b9a17022609d
Date: Sat, 20 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781970393
