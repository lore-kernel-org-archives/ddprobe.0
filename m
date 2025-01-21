Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B11518AFC
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737423954; cv=none; b=VM7pJlNIWMN+32Iv7Mfxqc9SFBqtuyx85zVHGVBJOyv08AKiWWyKoNguPnKhduP6TUOmyVuMDS7fggztLU5qJrK5Hffe+iO1hYOeKkbc5xT7xRAAGu8kB+CXA+UinTQv8/5f2Dv6sH3yQcjNZ1NBJI/Bf7p3Q8DsMZNlfWuGcmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737423954; c=relaxed/simple;
	bh=xR+hYGmZRuHhmUHe0swC+xHag6Vnq93JoBKOpiKhqMc=;
	h=To:Subject:From:Message-Id:Date; b=Xyhpf9F7atVGvyXU6IyjOhUcy14ULOJo8rJOfRuZ/p0iQINDCOqrscSCYiFzfwhUFhBgC5HFcaFwk6eZDF6nmiJrwsmb4RJsz15+auw9DQ0TP/E+6/vemiD5Q5yyBTaN8Mj+B34UTt2QzPysHyfb2akio6cLe0rEraduwgg/jOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBcFlegH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBcFlegH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA083C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737423953;
	bh=xR+hYGmZRuHhmUHe0swC+xHag6Vnq93JoBKOpiKhqMc=;
	h=To:Subject:From:Date:From;
	b=uBcFlegHE3zO34EoD66rSyf+9ChgXI6g2D3vOPwRzXefspvmkjixUvahLYUjnMXPD
	 tpjKUepfgO+IjRz+UusykAGYLFjBC4HsYMbUCiDY46rI4MCTINvk5MVmct9sO6fD3w
	 YgASnPulp6Vke/xnpAAQ0tYhg9q1ohwVHF6O/S+E3K54bwAPSAOMcAQD1U8EV2/rAa
	 Xkeg0Hh4HK+vqS0qxXwlfmgzhDORnEp5rTT3Z3q01zl/oHnq79gxDx94MuuB923vT7
	 Ju3TYqKGH9KR6SKUKK10v3xqtHeZn0zXozRbqF9SLYTJaRn3YD7cu6C+v5iYV5w0qq
	 /UqzkvdacfEqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B2C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742395358.9855.2084220170794682132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c091dc052faa57d02d560646c630cb7144be17ada1afb97577e3a6f0895bab16
Date: Tue, 21 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737423953
