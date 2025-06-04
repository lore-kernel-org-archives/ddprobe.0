Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D4325CC4D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748998793; cv=none; b=nQbkMhpRI4Yn3FP+D5K3LhKlFrVy7b2D+5KyQzb2+ARym97GZMTVJGqn/FnOl0CEatt/1LSR1K1mrT7uqX0MtUCXyH0XYsqORwOCVTDwLrQq7glyf63W0LkQiW71a1xBX+f3GUu1cTKLwcL9/hRRCN3s4/or5G7H/o51cWWVX4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748998793; c=relaxed/simple;
	bh=9tJQ7bqPSa+KWSPFZ08BhbLdlZllB2LYKkgn+PYq0Vg=;
	h=To:Subject:From:Message-Id:Date; b=GaHrLyRFXzcHa2mKdNpXAKXweB6o2lMLnMurGX48qW0f82Nc4aSOQaLLH6qGZ2YDhEBXpWm+K8uKUoAeMwMS8tdveUMvLy24VTrraySDfLvREOz86hKlpiK7Hn4WyLyQbYLCGOGkk3Uwz1OPj5c0NEraQ5aNJF6c+MjTj3iSKZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovKV9WMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovKV9WMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B417BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748998793;
	bh=9tJQ7bqPSa+KWSPFZ08BhbLdlZllB2LYKkgn+PYq0Vg=;
	h=To:Subject:From:Date:From;
	b=ovKV9WMXs0AhFnXqby+YlR4OXXHvv+mkzt6/BfOq0hsAP7QWGgiDHnMAxW/027NaQ
	 d9aaQc2tZFTJCmRi1pf+cJMejsNun9AMfDsjeo92fvFar70qGtR1OsTSopObrPyW8i
	 DVvzVslRkDGrtay5yXeOnxnd/8cbbI6HafDNdaeENpEyqRr3RXpUz9J1aWTGeudsQs
	 C3Xd14qwQpNQC8bUCrWXG0Ne57JnfhOU/RRcuPZ+TeR5Ihmjs83GwiOPRNVFcrsuKL
	 efr9NqXpRgU/GhXr0SlEjQhaksSOqsyzulgBR8AbMhZ2YZl9PBsiUUBsKojMMSx7DV
	 gBvwCdFTx29Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97030C5AE59
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899879360.3066.12740186109463866058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3c517447788eca83fd8c65d19c89d9b579dcbb2dff28fb8769c75b8ab374d7
Date: Wed, 04 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748998793
