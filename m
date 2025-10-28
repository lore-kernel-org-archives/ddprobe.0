Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA17332EC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665994; cv=none; b=bAFtYInrehtrLujnZ769W10zNs4DoYk+QiNhm3jFjptjKlSDPSHPKqQM3OsM1YoOE4Zgt3YBJ3AKZf0hxFJksmaNMdA0e2JdkxIO070DrAyP1SRdS7QNZyrPHvl82NkpLYhY+PeJfopin6dQpJa5Yvjki07/X8kNt32YovSHdoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665994; c=relaxed/simple;
	bh=FEZabDb7jVgFsQYOLJtrrpPmiR/zL1wjNfUiYAtAh8o=;
	h=To:Subject:From:Message-Id:Date; b=sN2bt3VN84MpiKOLF4N5eVktCtoubIc/zOjoK+0PputcmD0tVMApD+iuQeR9sJlmlvSaDZkF4HrKIq3rjUU/fQf1FUnt+mzYFVErFbn4+j5Q9C18cTJ0pNeRBlig7gGFBF3cqaGaKeyYJNaGj/pmq7wv2vlYoNY4VxVN4UPWWf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoVe8bFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoVe8bFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A7EC4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761665993;
	bh=FEZabDb7jVgFsQYOLJtrrpPmiR/zL1wjNfUiYAtAh8o=;
	h=To:Subject:From:Date:From;
	b=hoVe8bFfMZhkpJ3bNhmUkD9LQrP5fBwktMNb9fAUG4HhH37sDpX/to1SGZC8aEJYi
	 0XdPL2DHaoh9WSsjHaoxdNWgNZMnVg6sZKUI2/6LUZiA41j8GZRMMY88uEK4OrpmcH
	 grapHVO5pgHvQzKuJwPexHncDnY3LGPOr2wcZkLHNg6EZsHsKd/yf754iW8MsXh42Q
	 YXGLxCkhtpjDXRIlk9gvIhjxG7mlloxQO6uAc3RWPajoKC0/gQaHvETw+/pzyn2KbG
	 J1MaeMGRso0dAkUZyb6CiWUc7IvRpnWZ3eigsJ2OB/PJJBSfFPNvocmXfVoMNJc8n/
	 7ovNflPDAXRNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A20CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166599359.23444.6537774015154713222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f56173aa3e24446f7022075b4da9a1bc248a20ca19655f65059b70212bbb9d
Date: Tue, 28 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761665993
