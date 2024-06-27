Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188902E62D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719517463; cv=none; b=tVpz0NLQOxN+C2JWAlCCQkHzmzM0B7LVQjug3+W1Ky3oX6qkelmk0EWZb9j9ZTxtAaWF83EzNGENczpWdpcJSUvkVmEbQ8YL5OWmVKsXKMdvgpnSw3rDTpoqjRgvr12bSVTtuwqLacd1V/x+jqK9poaXQjFtJ9bH+tB3ixzEaQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719517463; c=relaxed/simple;
	bh=u1EnFY6nakHuhCZKbzifO9x/nxJt+bKBg6VKeNkRrW8=;
	h=To:Subject:From:Message-Id:Date; b=kXkjIxKqwDMaydgxmWgWT/ljHhXacORw2x9hhbU23vgxz3c1z/l1q8mGB6UEYsksgbqLes+55GMI0ckNRdNzTKOAm9az4roxjVC4lm51v+d3PSPXtBD3uJbEdcpSzOoYrOJqLxKRZtP+Zze42l6oQ+3kcrxrqqTH3EaaNeGG7Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJv3Mv3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJv3Mv3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E132AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719517462;
	bh=u1EnFY6nakHuhCZKbzifO9x/nxJt+bKBg6VKeNkRrW8=;
	h=To:Subject:From:Date:From;
	b=OJv3Mv3LMyw2XITzrwEtCcqz5WqtRmGzYakma2u83Ymfb0UnlfqaVMkI6CfmImp5e
	 sZYVAkV2NHfbYbINvz/Tl7xhQN9z5dVVDg/ojKxFcFvKZRSegSlZOwfs9Xwia+K00F
	 X0GLP+aP9VGCXjbgebFVPp3rw9iumwTmTZgwETPYjpjFoMK3ZqHthWkiXAtE8svAHF
	 kXem4R4SzekbiXg/g11dbYZj1ND7oPsxTpqX+T/sZnP/Nm+ETzFsT0+anuPV5V38Nv
	 h5Lnhj5k/fRCB80KB7F43HPBui+NbcUaB2D/Xk8Jdx9TvOrgNPCAW9041kMeq08gsa
	 jw0JC/QC8E+rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F6AC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951746279.16137.6167928541056429179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cac062f15e3525a410564639a4744987eda0cbf91f0fa47a803576049459eb5
Date: Thu, 27 Jun 2024 19:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719517462
