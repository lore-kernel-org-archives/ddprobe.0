Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209FAFBF0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768704834; cv=none; b=CNY6xQD8GN8WEDSzsN7n1tV5j7gN2b+ygPFdTmDse6ET/Bp+77q91wuIVmtoIZVux2outL5Dv07WTgujsZdNq/M3weYJLg95dezdwr1udXsPEd37+CX01Gj+SLYzyvfCFhQSVrQjYsHe6k50tXa1MDDJCe/YBVU62uvCmZBix60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768704834; c=relaxed/simple;
	bh=qN75+10Fy2sRzMzfbnbciA+6durdDj/YcvbSPGFse9M=;
	h=To:Subject:From:Message-Id:Date; b=psvpD97G30cpVxP/KJVsGVOhb/xG1EfyUNMTd9z+QnXakTtXH9Q9qTDp1Kb3bOvF+FU7wSFueHrhr1DpcP5M3Uauww4W9faakYsI9Lnwy/DG8PeujL0UTRUSEjGFi+E7d7f/FIXRNxE/t0+4hm7R72KciONDOdI03IQ354Kat/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czuEI7Qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czuEI7Qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768704833;
	bh=qN75+10Fy2sRzMzfbnbciA+6durdDj/YcvbSPGFse9M=;
	h=To:Subject:From:Date:From;
	b=czuEI7QcyxvhLafK66p5CPlS/Kq0sdgyIryLdl4i+rXxPt0zNR5RIYOpG1WwIJJd3
	 +kq436GZuEPezb0j9u44sLpG7kVj2TlEp3jRGQ0hFTo5qgYjJDtAOD1Mu1HpYLxbm+
	 fBFBA9XdCI+Jxdvnrff7tDW/Vxwyujv3txLexfHXB1s44ueWqO5lUVuknHcCP5bPsP
	 Y48cS+YCbT+KHK5W5UckFVFWenYWA9MLfR95hei4cYv4Fp1cxdmk9zZ5LlxM07VvNf
	 vK6Zw7fB0r+n2zlKDcmZFVpj+edMeOLya0BbmWo34EskmuI0En0G7CmIQx20v9cdIE
	 4TYsOEzIy2Gdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A1CA5FE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870483358.19628.14897147559864818741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758440d0a340a8cb1ff3cd331611c21b8edbf2999f4125d89e12d568ab0aa320
Date: Sun, 18 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768704833
