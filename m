Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408E231AF3B
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773507294; cv=none; b=a83g6/LzJcBL5QUTx5Sd1R65kO71OoMy6SMB+e5GO0B6AhbjAB4EhS8YRgqRkGriT7J9Gysr4Hh/ViD0Acklawo9qoS4nYBbmGm4uxN0547dFWreaR4PtUY17h5SOFg8AGP9pkQZGl4kkaOHvCOORkfw8fFZRSiVf/XGoH1ZJmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773507294; c=relaxed/simple;
	bh=K2VwQvQISc5js9LuGYW0NLElMyn03R5wlieHoA1+TLg=;
	h=To:Subject:From:Message-Id:Date; b=keLiPBPOZbpfcQL7b5GhPW7L6iduFIpJT1iA9h2KDkijkbSXHCeWWt0apItD2jdZWJpjWGBUZoP7lT8A4ddEgKeHMo4iHyZgWv7puepT4lfW+u2bXkfbraumlFsjbYb0EF4F79TAUxD/+8B2aqCCX+7YAJIqQ90SJOdrpW7uyu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwbfgirK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwbfgirK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E60AC19424
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773507293;
	bh=K2VwQvQISc5js9LuGYW0NLElMyn03R5wlieHoA1+TLg=;
	h=To:Subject:From:Date:From;
	b=qwbfgirK01x4JNJZJHTrc3FXT2Sjll7fuJuGUYkbVUZy+kyWvz0vzKXg2eCxjmSLH
	 ZOI7J4z086YFVPkf9uOD/1RPeJR2Ys6EhDRXq0K+TkymdaaX43UrCxwP9GffSmpG7L
	 NsFhe7QhCzjC4KvuZxauj8+oQcwTHK6O4DbcbNTf6NdUTkt7QjDrVV2C1mN6tR3SJX
	 N3loW1humJ80mbylVq6KHFJv1+vEDn2N83Zzn69kt0YIXgWOe5+QkhLrPN4b5o8zog
	 GMAcu/vFCFGnhXeLbnXj7qgbOpcSBNkWL+NfXib+sUbLAbHroKxqvoV0Fcnp9mmy1/
	 pashu8DM7u4Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5C10706E9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350729358.8377.94250647947721316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d659a5a718c90625eb55bfbd01a8641b7a4f47f46de3903eb95fefba300960b7
Date: Sat, 14 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773507293
