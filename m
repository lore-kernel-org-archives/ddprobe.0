Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9B72F22
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710814697; cv=none; b=ogkgJUkWMa8EYN062Cn11AgHv10kitvW61fOyvHkQ4euWN78D09toqKiWcq5PlSJOWQ7Dr8c7yAM8LB0lYjRfrVDrbE4OB0HQYaRAT3Z+fwslrqXxeNhoWi3YzqwtcGE6oBnBEA4+1tAROWuXeTMcstJsExl4LaKVPwVzkrYtCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710814697; c=relaxed/simple;
	bh=/Ow2Q2lnQbIwqmFxlIR7jBbwQHV1JRWba4lzEysO/vE=;
	h=To:Subject:From:Message-Id:Date; b=Yk5iKa4FQKdYHCzxRXxBPLBwu07AbUumBDmtJh7gLQaDP5gfI8nhWH9s5zxWxywNH1EnxBpWgQtV0BCjtFsFobSkhKyOWM+4Oj11npceBHd55Onf/o8d3ezGgY9ZbOe+15qjY6VZuDxxZsTIqN7kvttIeRMuZI9UM/O69ZQ9Jqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSvJSOvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSvJSOvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76FA5C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710814696;
	bh=/Ow2Q2lnQbIwqmFxlIR7jBbwQHV1JRWba4lzEysO/vE=;
	h=To:Subject:From:Date:From;
	b=LSvJSOvpFTYZ/vliRJ8DhQdE+Jr9Pv191D2atOhObvW2x7/6V068lw19mTjYFGgT4
	 q/kWr/Ol7GGW+YWhJVHBfBt7/HbROIEspxa2j6FFFejQXR48yy0405aHk+g2RzI0kF
	 NHPgfgnBrsVlvCrwId+HAoSDg+batmMNDLXagLQNw9H/3mnLCgOhCpQ1VMqYKNpSWr
	 0wDk4PHTsPTDiJX4bFEa1BQlj9UMRe7rs1Z1jw3d8+0rEAi18doD/2wk76fxB9wxPp
	 qpVjvoPxK589gxEze36deldIRNJ1frGq6QQcEo+0mWpWyY2QzUSdssviZCRbl48ClO
	 w6PzF5k1+nSjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FACC54E58
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171081469639.7579.1875282769538671787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5a06c23e44aa1f4af4e904552bd32e6d5533689a0bfa39ac761ff7eb11d64a
Date: Tue, 19 Mar 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710814696
