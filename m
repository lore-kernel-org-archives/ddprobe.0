Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F15729A9F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761386394; cv=none; b=GJePkUTpwkOb5a0S5idooqiyvJ7gTCvS8Z3bwZUWnayhOK7xEhrI6nI0ayTPjXE7MS4LbKpqJWsJR/ayr0C5MWTVV3LV+0JIvHaKC+Sp7gEaNbU8aJlgrMoGyKag8JewToYzEXf+HIfSvuwEBWyTC2Y0GdkwsCTDiKrX+7VrxnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761386394; c=relaxed/simple;
	bh=IZ8hWCC53BNHY3gs/6bgssD8JNhZP7y8h/VdJPd2K3w=;
	h=To:Subject:From:Message-Id:Date; b=YXSNxXZ6vqlthe3XAwsrHwGTX1HUqIyrkSoBrw+I0c3iWeg7jvhb8WTmLL8hbiV7PqRCUR37/TfjBm6HD9LinmdSIlOdM6uOa8n+Cv1nQIY+eM/8hwKFs1VCzckEmz+PKBcLWS68IZyNyVeKedbXzy/byAJ3qgPU+JcjPr55FwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv3c+8AH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv3c+8AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A054CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761386393;
	bh=IZ8hWCC53BNHY3gs/6bgssD8JNhZP7y8h/VdJPd2K3w=;
	h=To:Subject:From:Date:From;
	b=Lv3c+8AHJHgqyt1efLhKFRoprlTPBoeikmTXMNkN4TnHbNGSi68AlGnfj4i1nUCyl
	 5bXFxyWlDgThK4oBMMCgpt+IudSaQbhvL/DaU2e2xlYBTF9ntGqQ0+LGR1WxawFgUi
	 0t1GrfIyZxaZAwMN8YZp33OChmS8XJQQkhGfUkItDkln10/3bXNLuRAt64khSNCeb7
	 w3iVobCnVrmQ4t1Xrk4eOF0AnvaaefXUVAWHVBif/T3PbvVomJXlRsGGewregVx1Jw
	 XkOeKJl+TD2ZIqpCPLTTX9Wt6MSFkVhjBvgVXUgHrVz33j9RY2qkJLOvaozI6CJrtb
	 9GD9JEC2ZXpXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F2CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138639357.10328.11054649864644620500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3eddb8bea6a44413f3eccd4cdfc5643d42804883a50347690bec74c6fb6b83
Date: Sat, 25 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761386393
