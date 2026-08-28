Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3E43033DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787877634; cv=none; b=BlheLEnkV/jF5EJbZhUhTv81K/MBJKy2CHLZHIwbSVAckhmRVcUY79TjweFHZ6Q/zh5QkRLL9cR7wtjJI4HFVSfaLByDXmbVTaZ2FSi6iKFz7Jbm+tBGCoi5qBC5SD9tLkL6lZ3xyGsp5t4nYmQbjj2vg8zmDyGFBaMd+JgSDVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787877634; c=relaxed/simple;
	bh=zA9hiaAaM9vuQbAM43bkzI7glURJPObp1Dvxkfv68wE=;
	h=To:Subject:From:Message-Id:Date; b=PP/kRHdMuY51q20P6z6Mri6jgwz3rFHVOpMCRzXhbaUdxcejBWXvyBr4PLD+/yeB8ZusgkjNMR/6acJfH7MVnXhMC4M2F+KreAMhBCLwNiTYQ60j7nUysEr7A1oAQFEWqhK8SpO0ZyWxiT8MV80X7o1GcNoTmDA3t5gYw+GzdtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+AYBRIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+AYBRIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51A0C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787877633;
	bh=zA9hiaAaM9vuQbAM43bkzI7glURJPObp1Dvxkfv68wE=;
	h=To:Subject:From:Date:From;
	b=p+AYBRIvFv/nx30KHXXw4PIu39ULdAG1Antd8aQl0zxbdX42c3SoCHSTl3e/ltC1W
	 C4+2V0fmMZOXoQr4IKVUsQh243dIO9Kv9cZeGPai7F4eNNtZTUqaE5ppEbDpuUdb3v
	 O0lr9uzN7yaBUfAFRSDt/da3oJJoNZOn0CyR7UTFdhZrZPHv5+Bs8A3l7UPxmO+rSK
	 y/mg9dypDG/r5gaPkqY+pXAfx7+hstISqoXE5EOTBsY8P62Ume8n4KDeIGvBt6uvhG
	 Z1KQDvp4pBLqGM21q1KpuB3776uat2zc1CM+3UFQ6qvQp5ZF+LIuMZ4h36anUDMdLc
	 HnTdHPgOabrQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23D5C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787763369.20337.14272297606301380832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56d9fb342619d5fd73835d62448c6c48c83005216422280b050ec54dd8f8069
Date: Fri, 28 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787877633
