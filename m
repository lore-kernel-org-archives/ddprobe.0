Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162AB15746F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766460834; cv=none; b=WT/PVer5MYRiMUeI6/qTHLKqSmG8Ho1gjJsVNcitcotOYNvJ9gX8xXpr7li7l1/EPmNyDEHfGAXqgc+DPmKaMhc6Cu8nOcZsswtF8VEnqlGUfB1hZ1ws1Nxsg8gjK8k/FtFEl3lgnGtAs9+56O+X8fv9X6bBnkV/BuvD4EpLCnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766460834; c=relaxed/simple;
	bh=1Y/yhIQ55cgZlZMEWUoXPG6lmZ/wQ1Fb8K7tb/E5e7M=;
	h=To:Subject:From:Message-Id:Date; b=iLmKdk1Zcs8Ssrx5QSyuuFJLpIUvAtj4AAr/6XeFKnOy1Gl+7cqB+mnF+2PKA7sEBbAqPbjhJnxBBy3geZ7jRTMHuNu2xwa+6nCjjfHfYHWROhNM3ojD2JuRf51P6HQ4ZQjcHdLX7hrSil+ulahUq5S6Z6AB75bZtDfV7cI7NHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzWtnPJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzWtnPJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4F9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766460833;
	bh=1Y/yhIQ55cgZlZMEWUoXPG6lmZ/wQ1Fb8K7tb/E5e7M=;
	h=To:Subject:From:Date:From;
	b=VzWtnPJFMSXQ/eRcvveVVPD9Uzm+2u/9vsD5gOWqytHK5yFMyZDzufdLaMQFkWsDn
	 zHkB/v87QHtN8BsB/0kIQ95ki/wcNnTmsU9e0WVERgWcnKwLDzfFhMSQ3CK/fWk1k1
	 fh0/bsx6naI1WmBjoYteR3j3HkETOem4TaQpEU3jl2NMmk8Ei0r/EF8HfYVLQxngyA
	 GXUDiQwGIfzGXr2RuRDYnh8ft1ApeaFfVs3mNfdgR3DIu1+56f+acL01dVwwWUALEn
	 HyhHYBlqlgKU764nxS+39nV+X9eqtXsdW8II72dbduL3kf8/N2DQxj8DuWhKLaAq88
	 ex5Mts6wwsqaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E996E6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646083357.15291.10122694641772517519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0096f08dd2c509748a504635abb79f3fea0b9d7c48ca710def56e606fface893
Date: Tue, 23 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766460833
