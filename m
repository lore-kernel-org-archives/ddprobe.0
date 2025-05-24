Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF6323BE
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748095794; cv=none; b=PCPmyBYwFeuLOKxrXi4msIzomoD5HRLwOMtcU4ent4B1tLP9oxbFqIJdG/JU8tFo3snS9cGkcKhJgi55mlRgkCZQBCqTLDN/GRiBeLQvA4VfrKTVqZtE2O+fdZGD3RMB88pOAMsewDMnVWtOD3/LbDQ1xQfia+dQqoG33vMomaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748095794; c=relaxed/simple;
	bh=HscaDv4dFDo328u9OZ1SH+dr7BD/rWDFFz0mNw9htxQ=;
	h=To:Subject:From:Message-Id:Date; b=okozBwE+nXsWMHGldkr2+AlAjcRg5smVGi3dOf6a1rTUj3GOZpYEsPotFLCz6PICy11Per0VxqAh+x0t7MuRDP0iIMWQ2NUIpAFy1/bDa/B0W0+ov6uWiYKYmn2CBDtQUirGZRNJtmuql7h3MPbKvwXUSo5Sl6Exjuoc5Ky0vpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnzqYZWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnzqYZWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1FCC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748095793;
	bh=HscaDv4dFDo328u9OZ1SH+dr7BD/rWDFFz0mNw9htxQ=;
	h=To:Subject:From:Date:From;
	b=AnzqYZWAL6p7iNI7gR61UxCOTgkpbGu2TuvIoiYfPwftK862JdQ4P85m+f5A6hNt4
	 fTTsb/XICiOhSdO5WhEpHUH/UStKRQhvT/pX/TH+aKo1H3cW3jJILQRI1cy4zGLWoL
	 O/V9clwHMgrvVvQ0vktxqM1iQjllmjLx0j3+ir0Zz+3/NWc6Pty2dAj7Vz6IcQMxgu
	 /4Nyavl5nZZJgWOT2ij+KovRzHkFar0I6Le2EygRuVnPxiBSEn0O0yhNGtEwTTStSe
	 K3Oy5j9d6QHVE+i0xb82wioQwtqMpvg1oKciEHISZNlEFiDq6CxwnFyXAbnaWarutW
	 RqD2g7czUk3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4FC54FC6
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809579357.25198.4035605596041262551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a71d4dd8753a4b3eef5b8f70c786231aed0a63ba74cbc52741e5790684fcf4
Date: Sat, 24 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748095793
