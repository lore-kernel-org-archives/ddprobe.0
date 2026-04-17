Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1742E63CB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776385655; cv=none; b=rQLy8Om/6pT37meWmFgNQUgUrL61JNP/XiObroQpq5C3qeApPlUAn9syyvBEByiBoiR6mGa+dEKYxHAnvmbULUloygFkXp3+8SywwzbfxLEosdecJ6WDp5PveGyU8PdDDh8JJ7UuOsL7/uPnT5Br+g70CqCATM71R2OfV1eqL5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776385655; c=relaxed/simple;
	bh=GLb59kCeAqvv/GVXv1kd/NcLtYToWaJkXV6/1g2m6JE=;
	h=To:Subject:From:Message-Id:Date; b=WWe7Zg6T5aGGafBpNAqlxeFhDfvLrleCmLM70oDnCj2ZOHA/S9P0+vsx0p8YQ4ruuzxIp+o1bghEjNzpjh7TBy6K39lTJkM03Ni4bgXohbe/sYPVso8oHKbxSY5eTxiu8eNoOX+Cdnhg/07MF5uf66a7ICVmWt4Qp7ZdxddM8IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOiUNaz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOiUNaz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB19BC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776385654;
	bh=GLb59kCeAqvv/GVXv1kd/NcLtYToWaJkXV6/1g2m6JE=;
	h=To:Subject:From:Date:From;
	b=MOiUNaz7wvkXxY3FZ84vFan8YlJQWJ57vj/d0gtvuSxrnScN8zCH6oOIl1r220+jd
	 S/nB05YYwra1HMvEIqoDY458uwyoD0jOFO6D5QFQxqomNLKnbpyaYGqyx3lHwdvayw
	 t9JJ6laOm3jLWOEp26/rQfUiDIvM9YgPFSL84bDu1GgYkme5YvxSywuWjXj/GmssvE
	 kHhfsbbqxc+XfnH4p6WPs6TFYHLoRY2iGgL2KBX5xvBpocVAGFQgys9FxjPOFCp4bw
	 cK4oMuN+ZX6n9rr3vy60UiPn2rFKzdg6i/Ufncy5br0fkE5HaiNlx1WYkN5Llc9kJ/
	 fDhK/vG7Rj7fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA334F8E49B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638565368.16996.8944432418063948893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b42a8b5edc4ded00f169bdadf2fa700dcacc545a1e51a52bfd197789d3af55
Date: Fri, 17 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776385653
