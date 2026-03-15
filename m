Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBF6371057
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773604494; cv=none; b=eQA/z/qPEslwal1Uotl85eksYZho/KwqTubxQ5FvwnM8DHbZzU07dGheZvx7JZpj2NWxQZMCUag8nFpCHw5mwnxVrf2kNLu6EB4kWh5pbd3d33YX0M7xr4RHZZmNvrqR7hHs7qZTQM31W43+O30Lr3YLdCwN6RyseV9UJsKl5nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773604494; c=relaxed/simple;
	bh=tAtkJuXK/XVgCvYhrc9jhKvnwIuwmPt4Io7EqspsJx4=;
	h=To:Subject:From:Message-Id:Date; b=tyoYoTZBbbwd9laV/fgWqvLAIRbW4g8IkDLGsFkphHCEuuL91owpnAeck98AcA2c01n0Z6ADCl+I6Fvf6BcyXyTyhhnEfUfQruMG3qWTi+w9JG7dQCr/k7TfMaUa0c2sfQwGz1gl3iWCEQOTtkGLLvDr2bzPv1xRO7avPDNcZ8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4TzkPOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4TzkPOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D9DC19421
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773604493;
	bh=tAtkJuXK/XVgCvYhrc9jhKvnwIuwmPt4Io7EqspsJx4=;
	h=To:Subject:From:Date:From;
	b=J4TzkPOnuMuiq8VV9W8cT27vQi3EJ1mJOOOe/LaZXQpQQvVuS+S4dUbgMZ8QH8iY4
	 vI6twrlKwmkFTfgBt0UR+kn08L1EYNWxVfO/vp2jPenfrn5QVvFTGpwF6wBc1pHB8g
	 Dft4KKLgepCqSnyFa+/OWjuAU1tkhBGnCkeL1n/g7NH9966yfa2gygQmlh4FzjkR+D
	 G5guOFi4nHbWL4SFela6eJcI7E/lxiljKH439wTvWezIEmSfRGVtUz/ygJlshfZ9gJ
	 WAGJnte0FUs5hNZml7nxOEYNZwLRqnqyRArLuMLMaE4wVPBrxoxsAKSWMilvtjuV+Z
	 4JZR3Chm1wyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F0F30282
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360449357.22799.17966966554807473222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942e9692d28cb525c845235146239f51b138e54dbfed47e5d6aa6196ea3eb8b6
Date: Sun, 15 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773604493
