Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007532FBDE0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772514894; cv=none; b=PwD3Wkm0j5fSIAV+b6plW2XFwzV8htxn8kCTIN9kjSx94na6ldW8xe8ehSqEmbJq8S7htfMQdDA52dq8lfNI/wMzOJYxLva/fwScbf4m3/znmuUBhaoOKtYVVD9/k6zpFWndbMkFohWRwB6WsZYiO6Wh8E2rgXj/I3yboC+1Qm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772514894; c=relaxed/simple;
	bh=Zpt2FXL7aVsbKzoAjtfUgHxQXWIo0XDpATiv8zshJFg=;
	h=To:Subject:From:Message-Id:Date; b=Ot3CYMa3J9rKE6cpQyhI+fenQhw8d8JwSRsDBI+Cy36eqabIjDhjxfkha3wkRQpDZcEeASzvopsNM64WVSDrfMZpJpeoP+BtLOOCCzAaWXC28iR8dNe245J0BF6OKkF4sGPz2agtmySAM92OSvSICinWjLL2TNNMMDDxVMlsKbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk0X58D1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk0X58D1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F4CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772514893;
	bh=Zpt2FXL7aVsbKzoAjtfUgHxQXWIo0XDpATiv8zshJFg=;
	h=To:Subject:From:Date:From;
	b=Lk0X58D1fiKgODO4RQF8ON7B0jz424NByE6DUXk78QXeERBv2lzaxMkUdKn8NlQDj
	 DsYCrZRc6K5FcmPktZgN7VoMSh7WR5UXDhwGB4OmCAZi+BP+Or30Wj7EKxX8l5/ufL
	 t8WAAT/ZkqZDad0zqxQYKvf4wO3VGFjxCb5Unh0vWrOASGUobdUXyExhfJs+HG3P/E
	 Q03MrX3BvGMEwj3qgbECQ/SrhLQubVUWbIm+STS/+O3/qz3mF9bgyxbA1rThgIjHUj
	 7MdNQd7mMOno8rQRq4VQnnLJqJcE2KygBuKR2VWuZ5emeS4BrE0uAs/OVBA4a2/rBk
	 ezO7i9G4Gzf/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D68E67A68
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251489359.21345.12395220600997152867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010d9805d4442f4ae28547952ed328cd4a5b3baab92b361311f865418b945f57
Date: Tue, 03 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772514893
