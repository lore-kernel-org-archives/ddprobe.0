Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3896437883C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776704854; cv=none; b=Sj4e6vy/FyHxX8jFGSdRPBVl5znQq8fF3R629ZDM0YvI5QX9ZNKrv58UPMa9JTIqPGbzkwzj0rRdizE4orqOZn5h8jIhF5syDwz5yXh+2+zBnkhkl35GcfHQoaLTULfXIsH78z5BQ7hpOlLJrKUDJ/1wdGfNkam2mPuWBP/gZW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776704854; c=relaxed/simple;
	bh=lqmZ/UGhPzrscxtzkg5Uj8CoVaY1WNsVlS8Qwmg6WxI=;
	h=To:Subject:From:Message-Id:Date; b=Faeqczww8VL4I23qRLPvO1cBkxlWblpMxOP5G4GmIY8weWcC6s3PdF+fspIpEcPBaHHiEZS8ysxY9XwamhFToErtUcXD0u/UFjssTaMurLDFFp5S8cJhGdpMq+l6VoTXCcJnRhyaA3solOD8IYPLsi02uCpw1nZJx8ms0vioA7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r97q0LEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r97q0LEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD19AC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776704853;
	bh=lqmZ/UGhPzrscxtzkg5Uj8CoVaY1WNsVlS8Qwmg6WxI=;
	h=To:Subject:From:Date:From;
	b=r97q0LEMh6QCk/5mOFa3kaAYLCGxVrwFD208OebIzhhBbbYfegvkdf/2e5E2NrvSw
	 wbWF9eIzJSlBDbdUJDlnmIls43zqkaUQaQO8ihPR0dnM4MbJSziNInkJ/P4mkrTlCx
	 fy56zC5e9SMMxNC6+DbBuhnoAVFscB6e8Lhe+ApVoD8OMB0NneW6BgVwQ1G5OnFaar
	 jGNRgI85D557XSFJvN92QlH9Zg1UpGS1iom5bLzl31XyXJbFZX6pAzh856EXH0Dwrd
	 xHrIPNjfg3/C8RzWlXNOgCCnWqIMUi231KPJPJNA6AHF1LE1hWBLA2lwDjO09hP8nf
	 I8aDG7lBNrYXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A3F5A8A5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670485369.31842.871578194594511435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04beb884d7af10eeeb0fdbdf1d58366ea975bedd63276d97b76489efa89663b
Date: Mon, 20 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776704853
