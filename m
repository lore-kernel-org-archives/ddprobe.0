Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA0439A806
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776827254; cv=none; b=YFk5oEwKTSBQ3fGE+RZy0YJSiHrrfNFEA2j2VzKxzug9OsdX+XHiLntODRFuYq27PUrSL3Ciz1gxAzCQsSvqMjGJeqLObQqvl0EBNIKRT32jGuatDrxhNNIV2WAOy5Ge9n4/DoFpphDvBS/puu9znQzJb5LYMRWva4q0Hp8rNQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776827254; c=relaxed/simple;
	bh=Z76+pb+FzeVwTzGPFbGzTsuUT7E9mOuG+0OCkv1/xwo=;
	h=To:Subject:From:Message-Id:Date; b=awnp7apiWx2m6NSh4QDwv9IbZqXKqnJRE1ziS3CFvA8HfPU6XlyO0NjUCUDN5So0eg/AvA36sJeq0J0oiDn4bhkz8Ldm+Qre6fXUxJGmFcxEAAM0/0Gd2A6Nwt8EJfDpMNgKcUS88u03CI1ckLbi+W6abOT3EmeT5o1mMkTgj7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YirXtXTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YirXtXTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD36C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776827253;
	bh=Z76+pb+FzeVwTzGPFbGzTsuUT7E9mOuG+0OCkv1/xwo=;
	h=To:Subject:From:Date:From;
	b=YirXtXTJqV5oAo35WxYKs2le1bXoQdxRwJndkrnZM1xUCvZW4rP4WD+V+DxuetGbZ
	 oezgN8iO9z4EF/WZ9FFkpfel7uMHYQ4VeqL2RmBVhuE/jy3RON1MVuddYNmlasREZY
	 Xx5DqP82hKyY14gX4HU6bCdLIX5yk0w1x+/+0B3sUaYJ4DBuTenwhzA5CQPHtl0iqd
	 rE1QuugcDx+Zhj9HTW82d5pve7uSr37qtIYKpcOa9hmGxPTOsl5+HRu0a0wdQUNkxV
	 Ncq8Js8ztKB5yXG5MuU01MDr7hPW+ZYZ4j2gqgXwN5jkL+7eF4nbAOKi+TOfWcPbaw
	 2KgLnOX/1OeCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA58BF94CB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682725368.13082.1141913433887169138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76a909b71a0a2ef5ed10ca17b4bd2361d125de0f98e8536cc17af23e0a15354
Date: Wed, 22 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776827253
