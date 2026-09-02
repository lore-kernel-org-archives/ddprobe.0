Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E3048A8C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788352234; cv=none; b=W58/xE/+6SjcCXbxiHn0bOW/9lcAKV+xmw9Ja/c+IcNz/vWo33W2mIVpx8qKCL8Vw4s/jubuj4i8ZHhpCqHCPDFQ4wIVqV5W6wG7NjEEPBucWV5X8XO517r3eDowhe2MVXylOVMVbzQhyAbyr/sQG/s/LoLsj2yNRSgIQoUC1OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788352234; c=relaxed/simple;
	bh=IW9wWtJoqw942SX8DuiIInai4Ispz5ckb7cz6Sq31xA=;
	h=To:Subject:From:Message-Id:Date; b=DBh30u1zxdtxvEXuhvtZ7EPE7BQSGvq0RGWBBDErEMmS3WW2nFZh2qsQaaBCk/3uX3t4SUWeZb6vhADZgtGoGTt0Pl1+CBBhhWDlcIGWa+zW42Mbl+u9QUgjJnvyXwvLAhpUvsOdjtE62RMywXoPOdZnTQY7kBYr7ItPzAxOZQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxoAtwHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxoAtwHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB4AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788352233;
	bh=IW9wWtJoqw942SX8DuiIInai4Ispz5ckb7cz6Sq31xA=;
	h=To:Subject:From:Date:From;
	b=uxoAtwHlWnryyBIGrQTnXLy0uIkrCLY6ThTwfePB0Yiiufey3Ct+KpYfpLl+kA+P+
	 FjdOeLlVCDiVyoUpp0Tc4yQMwZNqkwka6OWWyeJ2l1dIXReB9kD82ogewvGlP1jldo
	 HG3eC0cwS0BwgMAMyv0Ff4nENP1fhKIej2vp6VtkkPqxaSV2/V9ICEGZsTtZ9UgSB4
	 verzIObGlHwWVUusbI0IRURlEOGTgTRCAWO3vk3EPAyiwU4SUlDGkHarZuof933gbZ
	 sIMbF7IAVlmmTSyi7EfLXYIJLAg/dbyIaG3SVcRJsC9Jq6ZPToISVZOh75ajHIosgg
	 /TNOiUoUWDLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE0BC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835223368.25025.67554478970421655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034ae83015049ceaad8cedc002bfab4259d8d4500b349872ea4bec57e6d50690
Date: Wed, 02 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788352233
