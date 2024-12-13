Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C287919048F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734126953; cv=none; b=t7gua64fuOPaw7HW+TZjuwQBN1oO6pUtLsS9jpxDUf0yLAOYjbL1c7KwVBx974m6hd0Br/ABYzGul3Rem1Uo7y6iFVJhPNTfzB+KJvkPNN23dY5J7d9N7A4ZYPSWfHFSoWNyiHTy1STGUpE4m5c4HgfnXdQkDWS4/OA9JjrhBJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734126953; c=relaxed/simple;
	bh=A8+O5QV6cYWGA4aYydV5sb5jMRqGydLzCeDGhl5grLI=;
	h=To:Subject:From:Message-Id:Date; b=huhalfrecwfjDqfFh+KPHYhiNkO8P2+0JGc8pxE4YshPjy1oJFPcsFCN0Nc03X0pXa2JNlgCUrROOjpJeQAXp82AZttLZUOhGBtpxOAj4BS1SJZ8ZGy4oHTJv49dRC5BAzHVd/poSewTpVYkWTjvVfFeX8xBuDF2/LLoiBxZ+lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNGW7/Wh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNGW7/Wh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6349C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734126953;
	bh=A8+O5QV6cYWGA4aYydV5sb5jMRqGydLzCeDGhl5grLI=;
	h=To:Subject:From:Date:From;
	b=GNGW7/WhyYgYTl2RZmf5xemPNVGfgcUR+lA6/oc4gaqKkkiLUx6OkqoTB39yFm4eM
	 f0dL3wV7BiV6A9SSnzqixJv5wEf6PD3poLSAeRq4CnHAJ9Md1nbZTYxdODLQyQy6VF
	 I52PuC1LJvtOvrCNDKgMhGxG2bSSWYnPGBGalp70Dd9DDBYEZSo0C+pZimiUaIFbMG
	 uLYC9q8pNcWOjGbZE4zRwphsmKqf+AgzlqitF0p/Reaci0FsYdAp6jldYQqX2PAfID
	 NHN77uC5vlzpQwCnRIrGE9HlHEeojLrcbcThTM7dggjvKWTSNgGXujDqIzhYi7+aLS
	 ESdxFLTvNivaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97553E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412695358.3184.11709960028961357740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2fe728e785161a7ebbb6d86448476b579e2e0c9ca86046a72936f4966e33f9d
Date: Fri, 13 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734126953
