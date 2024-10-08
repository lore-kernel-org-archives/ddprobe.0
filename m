Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A649136982
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728416754; cv=none; b=NZBYkxzXQZ4toFX4FnEviow7YLtAG3iQniYtSYea0VV/ljGUH03rqdzUoaxdanX76hLfi+OHfPZpxRkqa3VSWlPEcpLJY1lNYR9oZEVxNl1sDBu3gMU9EyuIxFzNecwUSVQxzTxeUuYM6QML/+k1z/WVlBf0HAw58tVJ9aag5Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728416754; c=relaxed/simple;
	bh=WjqfxL1glAsXYuwqy3UbnMhTQTO25/Yax1nY1Q534sE=;
	h=To:Subject:From:Message-Id:Date; b=RdIeoToXSMyGzK1Sxwmp4PU62llvtuuGndQxmgkKAGqDq+e91EYaAb9BGoQMA3/qfEMTzDpMOjOacWi0VozItrPhj/y1ych0g+eXv3vc/ls16JDW0Vc2i8s1HmQN110Z722uh4/h9te5Ggb/pKybun6f6E2lPvHf+e5ubNJqC2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+Yp+7TC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+Yp+7TC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2699C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728416753;
	bh=WjqfxL1glAsXYuwqy3UbnMhTQTO25/Yax1nY1Q534sE=;
	h=To:Subject:From:Date:From;
	b=u+Yp+7TCcgI+NrLosMnmMPF1qvXbZH1ypPtHGHpfzod2gNAV/J+Gk1bcV5h7oxGuC
	 sEVCj03UWKuy7JC9zTB5d0rERZk9bRHY7ZOaOVK8UsD7s7T/Cd+QtTtcNGYgu7R1xe
	 RZP5CoBoZ2gGZYjE8GXXcXAUO2ncH40wy5UBHdksqihBUy6Dy5ZpO+kGxRna9LRUSZ
	 MeXOvxVU82hmqKalit05gjcJgZx3I7t1Ll5yEQNTmOvi2+o/3zzaRziVuq0BcvnymQ
	 yQOzBHbXt7ZpQjpwO44KGbKK2vlfV8f8pHQ9+ha9/A4BxoOO2Qq2JRxPFV7g7xms4R
	 nYR1GxZm+SdrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97906CEFC4C
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841675361.26562.4537041474158394049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6472100a26cfa9d6991266f841a3af515b5e39dbea9825bed411c47c0fb4b3
Date: Tue, 08 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728416753
