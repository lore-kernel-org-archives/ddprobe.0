Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6824CA921
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753980596; cv=none; b=udgC3dr+02Vr9tiQYtnZ/gmafG3wkOAFQfp0H2nF2dpW+BeHBIqA0/mdu6PoEjbcSBPB1+/Y1UE2J45dtsdm7UlaQOjJKhENveNpWKxEyxTYeoprBIFHE/bO64uH49qCkgSVwU353RaX4F9g9dJn+fety8UdfNd9Au2yO9VoJGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753980596; c=relaxed/simple;
	bh=UcSE+cc5WzlYXqtKJiO4+nHk3e08jMf2jpea6tCuJSk=;
	h=To:Subject:From:Message-Id:Date; b=objUaO14nZwdtlbYhK7xgXD17Zd4IEC6DsQ72XDPezX6PzNyF23PS2/CXKmaUO3oR1pIc3gtRn4n+9XHMo+TI+IVjjUrNwVFTl8ElBytgBctQ08QfNumX8FkcqbeU+W5iWdqA+ycZP4/Cg8Qo5my6n7TmqN6N1PDOPef/kzMTDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWMfH8AD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWMfH8AD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5920C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753980593;
	bh=UcSE+cc5WzlYXqtKJiO4+nHk3e08jMf2jpea6tCuJSk=;
	h=To:Subject:From:Date:From;
	b=DWMfH8ADUwYLKE4vNkx9seeSnD0qhnydBmjNVWslwTe8rwh80uK4hBGh26Zf7lly1
	 0UNqtVNtmUw07GsIkNDPgcWtRFyvsKc1H8Be9BdkPu9mkLpQVnI/EIX1ia1pO5lK3d
	 hDeZmvN+EQeVmyPnnZzjf9FiX7VpjdsxbjWDRNtxctW9rP+SWW91HYDPB51286kDce
	 Cn1C/2qrHGXsawZA4PkXKgPDyXDDOG2iKyL6GUcR1uVEXHnrzv/Co/JNicleLQm2rz
	 7U+/99TCAZlyySSysvgZweOPHnKcxGa+9cF7GyfIMDDZ0L3WY0vVCBy+XT/JBCB7hR
	 lMldw5RjVi/QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A42C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398059358.794.8630615414044834530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80852a1c14e6be97953e0f7e64c2916e587f23d9020651f99313833dfc2bc68
Date: Thu, 31 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753980593
