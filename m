Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B83733F8C2
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776761254; cv=none; b=TmoL7UANuhdtLYHC1sQ7e6SiWPKKLzSXUNm3GfbXLr4fEWOlEw/ZcIjQ4s/Q9+bELzTRej3PORc52l4SBM11nmJ4MwHkRXDjsEMTRtKZexKY8YLIeNA1bj+ccvIYBLoGKenHFwqwdt66ISZZTfRBrpHQ1KiCdr9/Bk5dQQHADdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776761254; c=relaxed/simple;
	bh=UzFKzAIq8mK0y7etLv9wCPw7ZtdKFSlesz0aYGwR5HY=;
	h=To:Subject:From:Message-Id:Date; b=o7jD+XeMeHlbBbc5znAaJYCYLCGQw95ReZExnl1MMvoo+fn2STPY4WfQRdZPunzUYyNP3z78cOuYorXtco1fEelB6HOqSBREo8KTQFYXJ7kQVEuNzYnsoo7Yi72GIo8zCWqgguWylpHMYk6AO7TuljXc0fLGE6fqBF2ElFPxQv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFzU75MU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFzU75MU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AFBC2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776761253;
	bh=UzFKzAIq8mK0y7etLv9wCPw7ZtdKFSlesz0aYGwR5HY=;
	h=To:Subject:From:Date:From;
	b=bFzU75MUxF/n+dd1lS3gTK/12HcsFNvptpfsZoGbQy/wO8q2gmuDIDxLrtIDy6UVp
	 4u8G0D/P/DtEAfHYD3rOeD9sanX/xqLCDDvwPjtCZyMAhVMJZvle/MHd/6VYvniGOy
	 JKS2fOBtBz2NpzVg3c/7uNHcJ3wi/maudj517M9GQpTIdbVN5+v7Ro63tUaOzng4Kz
	 U23T08uloWjx4t2SmTrnDVADp8RWHNL0DDd+r91gsHE40wfnh5zufJhZyq0UtZRhHi
	 65Ourqpe+zjPNkV1pX/HhEv8SHq6N3HAsR35Q1mz04MxyaZW+rPxj/8nYs9pZnUTWa
	 A0aAa1Q+UafZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C97F327C2
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676125368.28363.1388113445649072387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37be6d54247513bed54a744c349909e3cc02cb887bfa669d5c578a19aaa6786
Date: Tue, 21 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776761253
