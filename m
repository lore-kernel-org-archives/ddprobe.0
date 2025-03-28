Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A891EF36B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743200994; cv=none; b=q4O9B46btsfiaEXKoBg0D332qL84QvVoGMlvO5rDbSflzZSyzsvsBWNxn/R4slyqNa0I6q8kYZPQn4BuQN6uRR/P6xG4/6as2op1OtdaRDzIabtPyGMIBf2I+q2+qVjNfdU6iFIlwCdtZHKld68BRg39Ny9x9VXB49BjbY0qQh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743200994; c=relaxed/simple;
	bh=n+o+fai/rr2Y6W3pwxsFq5Jx3Jcqo7BAikjwOPNIdbM=;
	h=To:Subject:From:Message-Id:Date; b=M0PL7cDr63T604uAVEZbMycOjFZI4jL1Y4ZVvqKqgxjo1OntbUAjWJ1VW/X9j9celKgqi9MWfBZ3AYKvvKbgJWPrfCp5RPwOYk4ahRHKfllgjKL05GqJF6nhFcDj4+hPQy8X3UYwLBSqJSuaeCwRtKYK1mGqudPPGC5xH8sR8Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZGSSbDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZGSSbDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB93C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743200993;
	bh=n+o+fai/rr2Y6W3pwxsFq5Jx3Jcqo7BAikjwOPNIdbM=;
	h=To:Subject:From:Date:From;
	b=WZGSSbDYakGe7kD6hKG1XWPpR44DWOQbVKnUJnUKWOMzDVWslubSCdyYxH5oUFR+K
	 autG26MANcVSAEW/n/YD9gNNZsKHDv6Ghxr7NICDbmiOwvaG3eX4NLyeh7l9NIz961
	 y8B25vukFLAfS1pATNY5WLn4gzkDXX11fiRgVU+XcnA1rZmGmSq0HW1e6DWZzd+twz
	 poEyaPaPwRMCLxSU9GmNgGBalyBvQaiKPZ8fte2fE1t6LO/9CCkxOJ2m+uz0JqIudS
	 pXqg1MtOu0F58hKvaeUAs85wLcVa1eoDJIo7r2iycTrUoTM843TNywqscMV/MuxLef
	 IsudH3Fxt02RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E18C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320099359.4987.8011526335592725477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db92de649be396de46b64609d7b878e34ce01f08b74e65e3072b3909d8059974
Date: Fri, 28 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743200993
