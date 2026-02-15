Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDAB29B20D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771170894; cv=none; b=JsrPL3BKTkWyZ/gSYgpJHTfGkmwFEGYaKrKbZFL5vaSHDVBbo9ZjLJSNR4T33BmSCWu+oQh23mGWZAc9CUQGyLaGlp3B5oBSPBKdg5otFec460PEgFpD0QIr08Ca3VPhUhwUaWw3elViOEyBgIAFywEw8b02aTZOxMhp4mm2WIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771170894; c=relaxed/simple;
	bh=RAQ4+k4WnjP9o6HPRZ3Ndzm26BSSkehuhFhgL/RbkL4=;
	h=To:Subject:From:Message-Id:Date; b=azIBC/Ke5XdBJJnTKh2hfYpklTXsaYdgI7pGrAMVL6dYP1UjVEtwqnOJr1j4tp0pvgIaig6glaVTIe/yafEgP2jQD8+zcuU3hxVt0N1YVi8zs3WDSZU5bx4X+vduPNlWjjLMH/oVdvg7DCu2dC67IghU4dxcliCq6Vk0SmqDM0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEoLe+aV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEoLe+aV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E30C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771170893;
	bh=RAQ4+k4WnjP9o6HPRZ3Ndzm26BSSkehuhFhgL/RbkL4=;
	h=To:Subject:From:Date:From;
	b=vEoLe+aVezHkEG9bfaPKnapV6Zq3XU0sBkCSNrA8tm/NKkpFJE+kWy40PUYY9pEqn
	 7T1MkKLMcP87B9x+JAhkwPATWEZ7XKgGyF6iCjrjKwimJG3otT7aqlhboBtAxsEWj9
	 SHKH7DnjvxxZcR9cW0BIGmsHjA8KMOkPtC8DB8fb8pc/pfDRJB3huYP3gZgzagPNZ3
	 Y2kMfV+LTfrREo1dbqbwMu7ONbdM8EFyj4FS5/VzHZc9Rsu7YsJvVK39i2ldq1mVk6
	 8h5YK30QAXZwEUMaVtzMtZegupM2gyHF8/mjf833rQVWp7/qYp1v6EWsgfWdC8qlvb
	 qeOfM4LvT8i/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B838EF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117089361.30553.8683745876973974603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6dbf64b7c41ded23b17ac8610a04a895c76ab2a5f87b3590a0c76531d32149
Date: Sun, 15 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771170893
