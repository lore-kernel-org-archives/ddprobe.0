Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291BC1FC7FB
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781592994; cv=none; b=AF4UgdeqXCdQD9MJk/lMM4WCAqHOpGTjZdEX/ExPH0OQDcVKDXA7vrR2qLM1LHTjSGfDZKlBKPwhLXdG7Ks4+aw9rfWG4dtPCqjb8ar0zNI3uoqj4yHMroTKHJ5QJGFsmUYeCUqu9DcTldR8PCjxmInU2jdEJpgaW+KCtg8UVBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781592994; c=relaxed/simple;
	bh=Doy6x8YcLU4qyVjYyGLgnI+5VrAYyH3EHGc54by8Now=;
	h=To:Subject:From:Message-Id:Date; b=M+d1THuQ5SnPSzBUvzF4aRpkMR7HSIcetlgm6sit+ijeGfienvEY3dWVXAnXPjkUGpIKRwbNaU+9EAFTmZ5YT2DqqB7YJq73C9gHwRYqJ6G1B1WH1gRaGVh19YLLz3lFIBroiDRgpEC39yH+AnhCtJfNaTqfh6QyU6lC45WK7Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWPyv+5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWPyv+5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86DDC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781592993;
	bh=Doy6x8YcLU4qyVjYyGLgnI+5VrAYyH3EHGc54by8Now=;
	h=To:Subject:From:Date:From;
	b=FWPyv+5+eBUWlLd4YuAPBHuxCnk1b9SUx9gl9uj84VpFSK+WtY9HG37fyIHoom5oP
	 qRHLzU+gtntLRL0ebXG9tz5p6QQ3CV/TYwb5cX55GGvrss0X8piJaPhzBoW8/CpI42
	 MV9ezBWNp3CmgqO7iAeqeUDlRk6XkF1rXIe7Xhk+T7Y2v3X7HrmIy1X8CXMInBwj2o
	 o6Tex/bYVQeng9kwY3yQUnt7NgHhN1+JvpCPgV80tw+NpIanb3ItsGpbYoWrvw9m2W
	 5rxCI8IFjz8xB/9NrEIlcaotlk5kgviW+R7pc3ReYHhAfpkFP7otOKmUODQobiL0pV
	 RwploIhJZaNqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EF6CD8CA8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159299374.14817.14319104263188971246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c27afa1bf67ad64d08d879abec5867fd5107d0d8432536a7baa175f55b72b58
Date: Tue, 16 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781592993
