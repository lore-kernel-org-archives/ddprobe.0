Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCE1B677
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716105743; cv=none; b=rQQYnFyATW+VvxE9WAtuiuqTIYi2gJGUgU6u+lGNNAOTw+TKP+S/9wZXzyXTN/zx8FUXJ6EjludEoLXy8Gsz3yEWl0eU1/PUkrGuM16FlvGJzv5sY0cNcN2nvEt+D5+0BHFYL5EinioCxhQ8AQQG8c3VjZAnnfgbc48mjCWS5gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716105743; c=relaxed/simple;
	bh=neXLraji49LUGFPxkXDFa8HWnbE1zrTTEWGsoyNfgmg=;
	h=To:Subject:From:Message-Id:Date; b=qzf3V0RB0zhct9AiTQq1s125J0lJigiKD+x01YJgv7cXjJVKAx+aHkQrlAI5DlkzHwexRIz3TZHOEtdJ9oU7LH1ZIDj42fzf1DjO8wSolFXDO+Y4IU5FXLH+eiAC6303TgDgTJCqkIFR7QJwO+Nki89MM6J7EXZwC8pIg0N3SKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8bP38Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8bP38Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3194C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716105742;
	bh=neXLraji49LUGFPxkXDFa8HWnbE1zrTTEWGsoyNfgmg=;
	h=To:Subject:From:Date:From;
	b=G8bP38JpJQ6zkigVyEs7xufTYKiQAlUdniLOt0o82uvh+a7AFq9Bb23h85RwHVSYK
	 0jK199aMlEcp33rV3+/cYQ86BV8Q6GGPWoMkSPvKxA3V3xaaHynfPOXb8Pn9YoT4T5
	 PVNPqwzsHw091NnsMjzOuNySJeDE1vT/4pYnhG2vxvKswxcizZYLIl8e4nmFTj5MMi
	 fiwdBvnEW4R5bM8c+fGwtCQXeKqoO0DZrC5CFBm+GjtDvzZavzg0ckluPuny9EnWSK
	 SBrta5Ex5tOVbWOZ+PVL/quRkX970o6b+Zcm/hPqhKdhd4EAgeko3Y4jVYirbT8bae
	 KA9qKbSBZg95Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC304C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610574277.3612.9895682026538850033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc35113bb66c911180d53af034be4e93a7d151202354d8730c849ef96a34310
Date: Sun, 19 May 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716105742
