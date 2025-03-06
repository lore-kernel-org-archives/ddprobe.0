Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E9E20B80B
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741266535; cv=none; b=nupKmwYZJOtOo5Sfc5Qy2pTxgoPqhPxLl7DzJu0q79bT96bRKvL1lKeftDprU+gKzVCL8IG4SPMy8YhtII3zqQA5r+TheU3eeDSSfFXWDL7W6VS/Q+XW3fk61DILRCT6exeUt/l9ZlLTIZYjquHlbgmBl5vmTk4Z+C+p0VfY6c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741266535; c=relaxed/simple;
	bh=Ht1GQ+8t6ghiGFPN7Dajzwb2F2hLHPhrdW9we137J0A=;
	h=To:Subject:From:Message-Id:Date; b=I3/2QidWFS89rsZFqM52yn2odjgeEaS4obKmzHJ+xuMfYb0KynCKs2PJwHhKv7RfVrSIY2RgfpSBOPqvAovaJwsB0CjxuQV8rVt/kgHz87tscFcAAStZfI+L+MmOVui6YljsryfK2dN8rnP+g7IGUJjcKBJKueY4uxJYY3XmZzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rW4GrLu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rW4GrLu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE1AC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741266533;
	bh=Ht1GQ+8t6ghiGFPN7Dajzwb2F2hLHPhrdW9we137J0A=;
	h=To:Subject:From:Date:From;
	b=rW4GrLu1WCqB4xyopuqZTPfCS3d48i4THPwUo4A9YBGdOdsolb348Tq/ARfClLc/j
	 +g9p9Aif84kv7JmVkZK6hC0vBb54Oer6PZMwg6pUg/KRXTkLCRp/BnP/xhbDS9eXxl
	 8idFOv/oQPBlN/YYV+9Y/qGq+8luhGqx8xxatyRt/chmTn8BnLXLxH1Scec5GH0p6/
	 iA+ZCtAz25EkOLL80IBDUv/sKvw3KO5LFiENw9x2oHF1dxUbqm6cg9i7V2sacI8k/Q
	 g/sydsGE9TVIy0xra0+fv8MuITOSvGH8AxSgOi7GsvPd5zUHaBiXWFjGNEU/omiclx
	 WbHt+Kznp7CeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE6BC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174126653362.29217.12518421960977136732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1640e89b643b08d91bc92c58850214255c5745fba528840763f71569f4b366a1
Date: Thu, 06 Mar 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741266533
