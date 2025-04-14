Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F30E1C5D50
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744669194; cv=none; b=cPiTAiwJ0uwh2zKTO9VX7TzV+iJqZeaslIESBnoHboMGfPr2Mf99fjPI/VMq4Rxw4alaZgrohH/x/bM1cjL/jd+jnJFMYL2vGpaFq+V6mbrdx9/3oyi9GWpT1kWymtF1PRHbDHY4g4Sfxdlfj6na9RxJTAoCeR8V86zOkUfN8MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744669194; c=relaxed/simple;
	bh=oFKxMlaxIcS/UgtPU9v4Rhep2AK0X20C42WAUZNYUpk=;
	h=To:Subject:From:Message-Id:Date; b=lvbztFNQRpzqZy/NnqXNUIc4tZpMgrtDxwVqDFyoLTKlarO6kgqCbjHUiFCNuvHWPzEXzahU6yyCn3F1YAG0CXdTawLgIeT+iErf1hXuEIPjZn9T92sGg5YhQ9u5XQNLSW3JAUTF6mifqsX779VaYJSKX+FGgRmELACEeUojN5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIaQ6YLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIaQ6YLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFB7C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744669193;
	bh=oFKxMlaxIcS/UgtPU9v4Rhep2AK0X20C42WAUZNYUpk=;
	h=To:Subject:From:Date:From;
	b=dIaQ6YLNjo1e+ei6vl70EmZMaYrOyicxWPvPotYRxpSKoCYweNw3GVgQGYLZs27YB
	 FgAeZh9yOeSM6sExz7MkNsEVdMQhTQ9Piw54PjDd1q9rH+2QXEiJm8jTa2Vq5MJANh
	 CLvTK7KbjZ3AGEvnfwkplia/34RiKmLVJVyR+Rvgs9PqdVIeq1DmfO3a6r3WQZy/XY
	 GWqVx7PboSbvVd2SVs3mfS0t7hECheFraaUhb9oDB6EsUcdP2HfRd0ab7f+z+Oza9N
	 /lDZ08cYbxzlspb2tx8o64/Sidzbz+spQkxhKY7ifrBu1dPcFcDRAqun48bmqheVZa
	 eMJ/uY2UrXRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9727FC369B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466919360.31959.9297801128205673289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af128dcd260463e00c8e6147a2e7280618b9a1ba03b185178c1366338de66433
Date: Mon, 14 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744669193
