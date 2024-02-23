Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072F8DDBB
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708730897; cv=none; b=QOeXv46Ql0qtInXzY68Sve7n4dAUzXliJIil3JoXNLY3DHa7hl8N9BnCLnLfU6fdHNLuirRXFJjjLVgZkVJeeKabg2ardtCHv2wbAkzhw1zQh0lL0HzhgMXzrIetCVdRuA/5yQR7RwDjhJaT0/Dd8R3/1TOiDSC+3uTO/y/dcs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708730897; c=relaxed/simple;
	bh=UcqD0t9z2fNTWfatNWaKN36dZDHatMp0T5n9jfhfc38=;
	h=To:Subject:From:Message-Id:Date; b=JuoM2ug9huwPS8uPgAAt0rk6ERwhhgbFGDUE71pHwJlvMlkxWCZbnLwC9kndWl4SBwx/7yUCQ4ojS5DbAx+zWjkWoZxbkqc5BRoljPAFjNG7uWRf8H/8dgSeD9Vb1j2K1Js0LfnWJxWNrcPVp48kIYykw6vy1Klv2PPBzBgkbnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuDpi84j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuDpi84j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1E6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708730896;
	bh=UcqD0t9z2fNTWfatNWaKN36dZDHatMp0T5n9jfhfc38=;
	h=To:Subject:From:Date:From;
	b=UuDpi84jVSs2LazIDqmpXkT1PgGM19QWODCW3+xtEfwzhuXSECY+kNhFYJo/71+FM
	 QbqKGWEpO4hbYZw85Dh+VhP2YrdwyWdiwPeHXlda2E7K60pXQI8Lt7TNd2fmj7/rM5
	 qkeeorLF5ZNE4V4xsfxea5VmQ8j8tixQpeQtHiNcohoiCzZMEwDG2kVmcQX7hqcmGC
	 evJKPH4E6GUZRNjB+L6H6UOMaFlwb4pDKrGrqFPFdTLuK0M56uIwnq8QdTmlunnRa2
	 gVKTLU5Rl2j176VcRa5XK2IzXktFL+3tE7go0LVBOtfBbP/fP6uNAWFRTYvWqOfo9E
	 ibOt3kjt+JVoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67112C54798
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170873089641.24833.18328547686700069996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1189be0fda88d473f226bc85a8a02f1e8dc5d8417cd529a0d4fbd36878713400
Date: Fri, 23 Feb 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708730896
