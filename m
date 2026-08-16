Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B964B04A3
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786886434; cv=none; b=c4QvQ8JMrbbOhB3hZDVCzjGX93ffv28A7fRCQW7cwqrwndnJO+voxILYijuBSA3OWd/rEh4iKd3DgihD70Hz3CKrJOomZcpdnEWJPBdWO/KLk48gKd3LHd3UMd0xSxyryTdG5LRRLVJHgJXVQwoP4csPpuJZjEoJk4eagN3tfWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786886434; c=relaxed/simple;
	bh=ZXk3XAGy+UE+zeA5QRMEhZqCOO2OBuaXx6o7nUaKjqM=;
	h=To:Subject:From:Message-Id:Date; b=AqgHVHeQD0+bZuVBV5y6DlVNq5CuOtjWWGyGFwBzhYr8lkL6IuLMcXlWwkkKoJlTqn6sjFHgwlyuZCZ8GsEJo9VlKBkuxLG7+Zh4gg9og0DMfDfrK4VaK6f7/WZ7gb9djH6vAmXcdm/C/5eT2KKf8FKYsAYlzCzJCijnLBNcKhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcBMU1Oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcBMU1Oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D057BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786886433;
	bh=ZXk3XAGy+UE+zeA5QRMEhZqCOO2OBuaXx6o7nUaKjqM=;
	h=To:Subject:From:Date:From;
	b=mcBMU1OhwkkzVOm023ArfVqlD7Hk0HcERLDE+/ML/DeAbTKxGE1CBFgrYxe7gHDXs
	 L873MicweepbOZJteKDnuyM8n7G48BodIAVOXYfxMga8QpARCOK+VJVZla8FKLnYhL
	 lYzdqApXVIK2gGgcXhBZClzMeiNbL0E714ddFf4CAxRsXu98KDIRrxykR7qz0OJJCv
	 5dEfG0ZNZwnDc0NRKV0gFjcIGYpZsGMRdMA+rUBx40TjaC5djFj/3nJPCI2irgW+K0
	 85OkAH+16PRKycYVC5YdIgm9M+uoe10Vo5SituRBIFb6sIyOWPTIRt+gYfWzh989a4
	 BiY+ecZMlAYWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCBAC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688643369.9270.8241267837874194639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d011591b192430840d5d73857e036c6aa1c86b9718069168eab68b65649298
Date: Sun, 16 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786886433
