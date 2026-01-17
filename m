Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074BF1F8755
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768662834; cv=none; b=KGAYWhs8W8f9HyTQ9GVfWQh/YEdalDYO8eSnX4SjkFBGIYIJ8bv4kUOx4rlX6N1pbpDuPA7s+VDqvtAsBEhbrm2gG4DegZ0O7QK9GvyhMUH4C6/rwjJA3EXaxYxI+zhgqDVuOkzmj1yjzqFeVjeyCK41lTkzaRRADF4rNYTtv68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768662834; c=relaxed/simple;
	bh=PjI49eExJEdZOTSsLIYZ1X5hZPgP84+24IHLwd8JYko=;
	h=To:Subject:From:Message-Id:Date; b=bnQLXNsJUohH/Q2HGxNf8qT284ReU5h1Rbh8uK7PWYgBPU2PRY8tAYgJRWS6TyW49R4hX1p63LMbjaclIQwiNTy9y7OgA77qC+lUUCY7FjNtI9IiREToyy3rNAtc4czbr+5X14Jn/MaADjAAxE5Hx4ABkeaWzZQfQuAhz/XyJqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEC3I9s/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEC3I9s/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4DAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768662833;
	bh=PjI49eExJEdZOTSsLIYZ1X5hZPgP84+24IHLwd8JYko=;
	h=To:Subject:From:Date:From;
	b=CEC3I9s/R+k3eVufAxPQIFZ4AWWDsUYS10JIWDjNSxD1QEGRNIR8cRy3B3Qaj5HmN
	 O3FNI8BtDnp6hVGQN2uSeXcyp2ZBugp/UxAT9ReyR09MVdGkqqHwOEcHXcMiJWMJjL
	 Q9tRkkb/yXWqJ2ua0KKDm+GZJheH2ltK3oW8SrEqcf1zvgcQMdxagZVKu1BiZUifHM
	 qC+FW+M8cMjNVVkELc3qL7uYzVE0oK8s/fvBoKbiel+WUbt6GUelapGou3uN0qy/ai
	 +5+38Wo9r+0hjGQoYCmUvAzEbo8KSM4yrlxVHSlw0vYECP0JvmlsVimTce2w6B62YE
	 XXnmOP1lRRwtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF1C98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866283358.23649.12717700349296993693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50675aff0a0fb107e6ffd7b62d89bcbc479732683758e298046f9331183e44e
Date: Sat, 17 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768662833
