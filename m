Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E6B1DB37C
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734818754; cv=none; b=UR9VtfN59PtQrjc5jBXyjn7uFMYX+DAwF6R6HhVx++c5dmAExFITmo8xkOHB5U15CtVxfWrAiju7fuCh+9W4u12wTTHudi8HSHeENp7AtPPnPkAjagSCATBRkOTBnWpBDd/DJOtQzqVONY0dS0EHif3ICIgrg3hM2KlB3iiwgAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734818754; c=relaxed/simple;
	bh=kBMksAKfDU5s7iSJlADlFPhxzis/a8nPt0t823gAopY=;
	h=To:Subject:From:Message-Id:Date; b=aawr5ykr92WjnZa4FngfoS/MbITwPZS53fJcfYQAmLUjAaTcsf62RvgDHsc4+PmN69knbev/NPaOW6OFQN8NkNQMsNW4vivwMVGZjK4/0JakEHvk/Lu7NJXczNlxhxaIiSeK2/+eSxTzDKJyrjxeGoNUDDjVYnlV8RI3diJUGYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcPwxJJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcPwxJJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE8EC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734818753;
	bh=kBMksAKfDU5s7iSJlADlFPhxzis/a8nPt0t823gAopY=;
	h=To:Subject:From:Date:From;
	b=AcPwxJJ2kUCIBsQyStvK8UsrXLyNl0nsT8OBwo0cqNvHAVBoGwX8F6WsVT1uP2F+H
	 3kkpmos0jvd8eSgudszq02I/WRqU/hDik7H3tpRydpVzmzFw7rmsUBCuVE3mHaEesF
	 2qJS2oQYktrYYy7dIvRS02clriVSjxwzUUp63H4ia5jnIulrbYNktr579eMAQ3cNFq
	 wZlvIPrV5j3ugPY/o+lfoi61vpB9oRHRewCigS1CBCGn3Mq8uG2e4LVMGLh1/U9jzs
	 ChRvZfn3JXw4PPB+Ikw6c9xOzewJEfK1x6RIgGk20OTGaCVXVO6TBdDfDOBhcO9tNQ
	 0q4rP/Wy7xoag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963E9E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481875360.24276.17534944446188259339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02cde143655e0e3646a94877f896b092231bf9af28375f8a71ce0da9552786e
Date: Sat, 21 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734818753
