Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421491754B
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726356954; cv=none; b=RoJCY1MS2877O/iAgx/KxKlLw42KsVFXBhs3muO50yVwrdJDA9RsN5iu6m8XNqJdXqzpYZAfZCdksef1Wx6xasmKT+ZZOQCF0F85odAExdjxWzcBlaef85RcQA9/PkEaJ6pFkZEOl+IzshYLiXFeT3DLFJ+ql6D1qf03yBwVGl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726356954; c=relaxed/simple;
	bh=mkjEE056r/owtYkLxRbMwKlOP1sTcRKSA78snzAjUGQ=;
	h=To:Subject:From:Message-Id:Date; b=VI5VIvwqc6hYBU/E/i1HT9+WIEYNsLNWMdKE3P54JtLOEHMp5bq6GUxfTAq4yQjSF/yWzhehPVCsxmGmeSvz1NRGgla35bfPi+u99a0KaR2ZVCvuwoCxQ0OnNwtO2/Pcm1gkbqIBcnQxozAiNbKBbeuTfyUzuCyUffQCYQUowO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpmmclEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpmmclEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF72BC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726356953;
	bh=mkjEE056r/owtYkLxRbMwKlOP1sTcRKSA78snzAjUGQ=;
	h=To:Subject:From:Date:From;
	b=rpmmclEh0GgF+FQmkLpGqHuZDmRhGcIPTi5ETbh772wGyVGQIuZAMJgco4wT5lT6B
	 +o9eTDWYqKpImKh+e/hhk+xfV4Yd8qO8AAgyAmeMNRHQHo6MNcypvMkzzSF1N9sJ+y
	 AxcfnUG5heTdx3XWM8lrMC/+iQfmBSv3pYndWczrpfRbfXTpm6pa/QEcO9GVZ2BxkD
	 jz5EEyeIhv/FVK0wxW0IQyaeDWShQrKLcJg5+72c8A52VBseBq3R/9pbEMm9cv/nbx
	 JkxhtWp6srHPC6t3cOOYcZLM0jxAjqxVrFGWH1fxxeHk3yTC21M3QYFEAn+N4EYLu9
	 4ukb261LnENLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8F6C021BE
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635695359.30265.7951867486221559778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59acc595fa378dbe5041412effcd696f586fced9ad30c5cea0d6a6b1736616ac
Date: Sat, 14 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726356953
