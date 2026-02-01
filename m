Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5E52652B6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769917434; cv=none; b=OXMzm/9Yh5ZkFRFOa0H6Wy95fCHtjHqiIgb8PVYKlrEVaRA5ZZhiZuHZqV04AOpat0xyZHao6ZYG44T2d3ZbGvlGyrocU28thAvB7sPFMJEtH2W+TkuaUQ4Te9dj3qif9HVMl4rcsW0sSTKHPyIO4RBsgRAivtxg+UsptkZah8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769917434; c=relaxed/simple;
	bh=VMHuuIY9IoiHcB/Zph8VOgfd2KTFjrVZtEXgLZfvzOI=;
	h=To:Subject:From:Message-Id:Date; b=ZgjfKV9cgnzVREqJrbAPM9d51sFCfCj+qI9kWUSIqoVjsFjlkocEm9WiDUYn8jb7Z4tNhkUz5/cIMjpcpKCQqaHkBVOpmERy+ArLcxoWIB5PIWTiW3ppd14Lpcj8p1+dNJycYNPDKSlRBHMximH3iP0TLXffroR0Xu0fJyIHvzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tpw3VTo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tpw3VTo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA76C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769917433;
	bh=VMHuuIY9IoiHcB/Zph8VOgfd2KTFjrVZtEXgLZfvzOI=;
	h=To:Subject:From:Date:From;
	b=Tpw3VTo6WmDAM/kgKhJahb6DQno+eJHT4tABouDvxL39rNOFTPOPPorRd8LdbTnEb
	 7mIaWnrj+ksHD+H36SaR9H8qiIj53zSblBkrkvxUqXVDs5mfNpwH0REQfjEBSLllMX
	 6osx6Lod7Lu3v0Ls4laivKAygtadJ9zVnWWwObHUOJMalF0uu9Jw5GyllA0Amepkz+
	 DWpNHlH9CJ3O6/1UDuZCKOQ35gZp7M5oMteGp/VEHXRDxXyJTEwBw7qaZhTJhpOCfU
	 Qz/R9McpJqdukFJAnHHztpjQ/+OPMUsNemcNfg+HELRAkcp3XaQlwcN1SSJ10o0szc
	 BpVSoBVPjwM2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F633E7C70C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991743357.27390.11152822563219256548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28f70d9d619fad36a4ce7fc10303415525c81c11a9c716c440baabf12bd4adb
Date: Sun, 01 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769917433
