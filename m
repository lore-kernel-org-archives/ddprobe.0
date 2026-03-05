Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C565718024
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772739893; cv=none; b=GJPGsSjJYNVNSkmKXJFaSNPpRVxyk/4bRXGavFpwHgy7MsYgJctQrAbJmDyhslel+hccZ7uFVt7PK38mzPBcgU/AOUtLpkHrYhucXQPQA08Pg2Pas4i/kPsjfrV8JTeElQw3SezWPrPoZDC+8zKiqSv5lS5ExjnR+wJ3eB2SXsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772739893; c=relaxed/simple;
	bh=xVIXd26Vcqim9MYbvk2K/Qroi/k3G5w8Em6zvCgBgQU=;
	h=To:Subject:From:Message-Id:Date; b=hVvx4Ex+5zpGsFcQQIwHRYuyVXmuwvrA/TG6bYse/IKDFVueg6YhPI9UCTgj9sBfpmQK8z1WcdgUazyXzSdSOE1U7pMs6Mh8Z9PyfiRafzFU+wO5PYVzoGVbbKoOh4puOVv19ns/88Dv+MRnaly3cXL3YzPfn+P3CztJDhKAtV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLMy+E/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLMy+E/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90B0C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772739893;
	bh=xVIXd26Vcqim9MYbvk2K/Qroi/k3G5w8Em6zvCgBgQU=;
	h=To:Subject:From:Date:From;
	b=OLMy+E/zivxEODjDARNv5/6zzCWckbRlW+W8vF9VtsbQ+Cuj1ygb1YQrwbziEYQfZ
	 GFfAsQTspNzTs0pbrmQskxIHtwO0L/5kF2K4BR3/FXBpF3FnHj1/DjofejFP37zZEa
	 Qt+XOM9+Qao37dw7NlNHs7X5Yvg3v+ptZgSsbIecTwx1orm5q9y4iwlR6fZg2ZjA6x
	 O6rAEKNUuQ/LTYh7fRg6UrxiD3YotbZgqiCGuOME6dTLHCM6vKmEFe6cuvyCHVklIn
	 rbCRya02IuIAL76R2fmdm/14/f0y786OmLLhkZbtYs092Xj3Ee0p2EJ9+xB2XMOgcf
	 ZfDkkCEfCFQzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E35F47CC0
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273989360.6376.6837982105000970657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d77ce79bbf5fd72f97c7c0d8379af2387c7fed248157cdba55e2c9b056c4a8c
Date: Thu, 05 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772739893
