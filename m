Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199423B8D75
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765656774; cv=none; b=L1rgpNx3MNkwztyICOvGdUfmy3Zp9zuwl/AAEDeEtBKdfP3qUZWm/dJayNnTVeg8ZUuOUOPXXB5hVg/KfOU7Lrxy5k8SGZUCtu3Z437cy+DPBipvvNHf9+Dsr0Ck6loekQBTBRTnXVhg3gHTXhIzhZUJ6EcAPwvHnRRZUkGXtzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765656774; c=relaxed/simple;
	bh=4j3prCJrBKsDAarzfnXxDKj2cC2l6kuczThbwV7Z1qw=;
	h=To:Subject:From:Message-Id:Date; b=BEwMZgpJxN7/OLEG2ACNzXQSD3DlQeTD8bBiqpWCeui2L1XmyFvbk3+FCmg+i8c+6+AeymjaNj7CUm4+rvaf0y2F6tlyxCW5vffTqL9gvbh+xrvcu7Tm5thgxNQzDPtl7raTCvYkme42rf5Y/avXeSeg+X5Il0EiotH+7qKLSy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCFUw2R+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCFUw2R+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A521CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765656773;
	bh=4j3prCJrBKsDAarzfnXxDKj2cC2l6kuczThbwV7Z1qw=;
	h=To:Subject:From:Date:From;
	b=VCFUw2R+C3JMYIrWG2g0AEqoFzQNQ+ywBYd9qrjOuVT2luUJhBNg+eL9ECxcKnKu7
	 ueAFpdwa8kFCMwC98vithtGDd9B6XZHt0dRNuzeyK2YQvVQ6HnXP5tpn5ZFmVBHLyF
	 HFoMdXZFbxgwBBNIoO3x8J+TehJ3N+bJ5oUwDqFpOpw/uZ4quDKTEJi2GbQuYsN6YI
	 T/TaOnPSQ+GRkB8VdFRvsgGms+nPlZP4lyNfdlkNIQsw7tHejRDHigKh4aNJCs7FsB
	 zhUY3LVlyvO0V7Nych7jKWWhcgXEhwYqbpcVMJiTpP4XMjlbCnbtJC0FZrBoseP2Kh
	 fQexgoGeQjmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D85D5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565677358.15358.13567953189684897580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f96014d973ce2eb4b71017f8ed3aad7bb0cd60affed56d7f506a0d3a17ec260
Date: Sat, 13 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765656773
