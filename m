Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2074C2D7BF
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758472794; cv=none; b=TmxEiOwJbs7l5YIQQYAHc5otVcpllUTNni6O2gJR5Ue2lwbqxmmXlTxUM08PutmPGufOR8JTmmlerIBSBH2m9NJY5i9AqX1KqB64gJadv55NgdH2LaY0zHEJppR7Ceg2fvWUcKj0yov1XQQZlZ8tD5ukptGi8EVMVJP5OTDz7fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758472794; c=relaxed/simple;
	bh=zNjK5fx79QJdSyX6uZu0Wk5wvZ94Y0qAtosxmIfpB2g=;
	h=To:Subject:From:Message-Id:Date; b=IevIvwAKngYz+TPqrRXj7E3d6a1F4de5hcDcYd+HkaG5T0l6+bVcasDgRQ7NcYGucDaI8GyqkK0bkEPSby1fY0sLmyPkfV1WVLywdjg2pshbQ8OCyFEOQJexp2QdvVHGCCfUqhC03QQAm9MPFrvb3iBgSjIS6DrVS74GkBrOtsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wl8siCZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wl8siCZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7902C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758472793;
	bh=zNjK5fx79QJdSyX6uZu0Wk5wvZ94Y0qAtosxmIfpB2g=;
	h=To:Subject:From:Date:From;
	b=Wl8siCZ6wSdWLY2Xan/boQt4Mtr/bb9E2dLew37yNF57HU0CAkeBjOSSUPePPcY+T
	 PtBggjsQ4l3L5JtKEr+MIPYPGVWsoqftqqxrUYOIAkWQ2tG3iCwJ3/GwFEchUrkYKY
	 q41xICm7aIElroD0DYrOAo0gnpMWC9n2lJwaYJFh4Bg4OObfWHSRwSjmyAXINcDjyn
	 DzP8QXQ5BSc33XZbkVYvnNC1c2lxoLFme69KTkwcC/J8DcaUYmsZdA+pe+UlpTNP2Y
	 gVKHGy7KnUW8PJ5ZzjJPW57+oOqyCpMHjJQedLV4C5ZtFp/muuBmwPMGv28+sFVRC9
	 5aZmbRpCu1Etg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A06CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847279358.9682.8910120874325325358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a7f9c0f91fc5c700994bad107487d77e6789868dec8a368b9682833e7975dd
Date: Sun, 21 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758472793
