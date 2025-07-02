Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B6F2F2C73
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751469594; cv=none; b=aov1GzF0cUvQL/+2IoTCjLn5kM1btCAva1iW9alYuG29gWEVuO/AAhsDhzlCG31NzJvDqb9WPr2bxhNaa7r66hPhq1rWL9Qd+UPiuxJ11zxLf3/k3KGTfleIZcvhFJQ7iRDo7NPTOLXRIHcFZHtc4zz+MG3Gp1aB24VicS+8gbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751469594; c=relaxed/simple;
	bh=nDGa77LfNCMcgVgIoR1eUNTE4nLZRyUGppQT4dHy0G0=;
	h=To:Subject:From:Message-Id:Date; b=C0rtfbCEkdezD1C0EFtPMcqGu53d4lT+3SLwUfHfS/8wXGYNEZGgiPGnjtf9IwJBtAeMmY5SyQOaHFMbNpmho4rTcwKtSWcLlVQLDegUkZalrrdnkpXMJTdMVrmvuFlEvxbTa07ye1vuur4AJ4ImAU1lL13GgVVuVIW4C61b/dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGk6xT64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGk6xT64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE3CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751469593;
	bh=nDGa77LfNCMcgVgIoR1eUNTE4nLZRyUGppQT4dHy0G0=;
	h=To:Subject:From:Date:From;
	b=cGk6xT64VXDiZ71Wa+7rw15FF5VRjTRFauNMxJyeJVcwTnlAoP31/dq9uisboQcvv
	 POMe7Ve7uLmga3FSlBd+F9z0pLN7JKn7ANste+6f0LkzaVezTF/1PJZhhl3/y5GyZw
	 tNLfKcHj94fHHekc149zUR72l5aD+bHx0l+hvu/dWA/W1C2zUGVhEN1lRTYaV51K0y
	 k+LMU42vw0zRhtOV04R0TQV1+C/mD/oku2sqVP4Qj7XIvUK8U27kgIMGU7ScwkpI0v
	 MTNry/htq+M/kYoNgcnEJbAH8RLVRO4GPLS1H7vCA4tAgSoXTNQs52b2QBZl/5Lhia
	 B9TEaNr0wH1UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB2C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146959357.29393.14568935797907033190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da16338570b0db43ac024a993b1cf4a8aac3c2cab3f2302387eb5c8795381288
Date: Wed, 02 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751469593
