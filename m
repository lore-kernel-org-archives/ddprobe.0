Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E79449B23
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784576914; cv=none; b=du/M3oMaSx3xtFKV+1H7ibLAzdRJnDg9GraSeKGgI83IvypkA1EAYVVTA8KesR4BK7Wy9pgtEvT3JrdnLq0RSszTdnv5UZq+yGBmSS9NE0tddErrxPgnWVgy7i94F6B763D2rxDm5hYDE1xnD/uXvhnnNhrhEEphRbvziDvUuzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784576914; c=relaxed/simple;
	bh=Jo2XT2iYThVt/+9NR2XWkJgWMBjg1v63/tHKvNHKnBc=;
	h=To:Subject:From:Message-Id:Date; b=olnM4aOY5ZHhGQPjalc6Up/xLTAb6jcITyN5U5rmMchTmuaaYPB4ITZe2oysQhf7yOJfkH5JQq/zJ4MfDCPNOLrk9r7ASF99yyWTfAA615459ywZ2JwmPncwNU13QzaE9jtpQnqrP/UP8HzvR3X1otRXdqtvOljsDm4qqxpVrMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oqw0uM/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oqw0uM/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BC9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784576913;
	bh=Jo2XT2iYThVt/+9NR2XWkJgWMBjg1v63/tHKvNHKnBc=;
	h=To:Subject:From:Date:From;
	b=Oqw0uM/OetNkvLjPZNclZpAcQok8fW11FS02xXIsKwxX4xPx6Ok9K8Flbgq4Ts0Fm
	 mPW8HQhv4rjXfdb2s2LbcB86WdIbSu6vqgxfUcY1b0L2kswNwTgE0CYGaRSIqlflOp
	 8j6FIODxAbO3l1P6kfRpDff+2vNjCRf+wf8wE7cbyg16x2YaijqKHsGtJx5pCZl1EC
	 Xiu+JGJkbBnP6CbF/yCfmETw+ZCnWmJJz+xoPIcFydDX9BCzhUr412Xu1YgBwTGJZ8
	 Nc+cxuN6+35XD6KP26UxNEk4LkkLjCDUxa3W8M2+WLyJANMlegJ9I1fENMzYcD6S6w
	 6gGfvxZhJMCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A45C44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457691374.29089.15102671049303449862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e27077e494aebb9262db86f45262e2de3bb85f0b29372cfb444bc4b10a1ce7a
Date: Mon, 20 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784576913
