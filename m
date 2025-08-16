Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196072957CD
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755343794; cv=none; b=mzSxEsA/1NVb5qlBzRYKJjXi61X6Dbeq+l2P3guQKsnvrEX1/1lqPIXft4w0LRH+/qt5FV1iewag0mPyoKmUWZ4ZnMlWQ/DnPNwHsMUprz5Ez/LWlcoFbwWyYAuqDQVGnIU8DQy3SxFBEBB7s5Yy4pxTranuxIf2zCN23yy+iCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755343794; c=relaxed/simple;
	bh=OcYtaXV+97N4wRiLn4wpauh2kPQDlYrjTWj4jwbo35E=;
	h=To:Subject:From:Message-Id:Date; b=npUVKUijxtrfKD4LlMe0c5rXxIpw/tdvWGkV/32XO8sHOyKoXyGyZE3Hq5lFf74PVRP2yHl2rd1W9E6VjrFW0Uy7k4aXxFVzwpG1FglqsnCo5MaDwidXvdK8JD5GvXAG58gZU4EiLUzdDPaoP2bmZyu4N4bXRtCG5Jn7qtLZzSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lca9/edC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lca9/edC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B0C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755343793;
	bh=OcYtaXV+97N4wRiLn4wpauh2kPQDlYrjTWj4jwbo35E=;
	h=To:Subject:From:Date:From;
	b=Lca9/edCeI4HS30XWw9EokoeKKGRO/U1v0Za8Ym326gDY3r4Arlw46zw6MYAuVFi9
	 FlQ9+kH3HX+9In8vSmCSjL/OydAYmPBJrqLxQfCyBZiuUOnXDAZ6xl32aaOPYQzblz
	 /lYB8rwsazMiWd48Cgo+SGI45/pyDLSuIx9gNtaMy8NOTHsaLeffo8LLJm/WSysGfo
	 H0s34bTx5DN4Icte1jCHOVwe24Yl5Ojt4ihZCULYjQlZgcNxQl57TMrqDhrL2+7tPH
	 XSLjs7jJjrS6GAA38dsk9GHVaBf+y8tT5rQpYPy+mbiyNQm5kOGELHDHMiCima7P0Z
	 pZTTa9oOYRIGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF6CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534379357.25200.8693101662843190842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb46c71950fcd07479ea933e1a777b16c98186a95a334e0fb75b0a00a8791e50
Date: Sat, 16 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755343793
