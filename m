Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257451B94F
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707256697; cv=none; b=i0Gb2t9Me4alldJ5OwUGE+mXaEHtnOIOe+nPzi/MpGCrw/bYVa3idXR6l3codhc3VuRPJmr87gmhyMJeSu5Kn6R+1jyQeRr7rrnpm8skNnbalhEVlYqKz1RJkX4pEqg89kwT2ksDkGsLe3OTUeR8BA5nHhNSQQNUOMeaBDqew7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707256697; c=relaxed/simple;
	bh=EA5vw9KX7PnFP+nGmBpgzSHeo/U2dQfnAX1cHK5cXCk=;
	h=To:Subject:From:Message-Id:Date; b=RrzFzvMDrJbxSCjXcPOAm4r39Ih/CBlyuHG5sn1+qtZCSbNBW+rvwkQ+k0s1uyxkbWQiaFEJ5+pemvZBoGIzABqCCAXHHjla0mv3BdJxjMeNkU3YgX09uHo8Je+xkLO+VSAUqesyY/oCX6W5b7RrGnPaw8yteLehMi7fi0rFGQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irtl3Kz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irtl3Kz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 994B5C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707256696;
	bh=EA5vw9KX7PnFP+nGmBpgzSHeo/U2dQfnAX1cHK5cXCk=;
	h=To:Subject:From:Date:From;
	b=irtl3Kz0HeKSCLYwrnYtu0oiYb6vGppt9Urv8V0TE8/XMvP2t/33WdHyTDJZ89PkK
	 KmyFQtKuUu66n9jYmrLwteg8qWgjfaK5UKTBfE1yG+7WbhgaQxXBeo4UbOesZYKqIk
	 h9PG8NINPDKSWtEZbcmehEBAi6o/brSHu6lbacLrS9XNSW1PJQIw3bDIIobXJDtGnw
	 C0VmM5rlLjjyAY6HYrZ7IJkHlCQ8rcOUwt55IH/zPt9sCOutM2AA/iSuF3cAwRaeBN
	 zwCp0ExCeM7J38vQwcwMSh6ftDaRh66wMePw/VG094Or7XB5BR+ydn4+BXDjxPJLIo
	 14X+TYDptTQRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79D95C48297
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170725669643.4745.1568386594990198556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86d80a648b6965fed39cb3f3d354916ad5dce6bc716619b344aefac5356f150
Date: Tue, 06 Feb 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707256696
