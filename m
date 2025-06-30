Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27378218E96
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751267394; cv=none; b=eEP+WTUA9QADSkx5i4pHj40QeMtAiNEl4mMG3x8GwHclhUzTrbW1PlaLZFMw6JSG4h3WNeRcAw711O22YdPM2AOh4DG5ETa52EmYte47y00uycdxi8k9TwJfwZgMD7UxJu9qFSYLCx+jYmiBqa2AZ7qHOPih/2fkppeZod6MpQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751267394; c=relaxed/simple;
	bh=xF3BVXiWBjk+SHxOmlFmi31zlC/CGyQo9KyMt67v2Ks=;
	h=To:Subject:From:Message-Id:Date; b=epOLx4C+IjrgG54AO3dOZo6QE8JCcUhYPiOzt+kfUfd8BQy1cwt3Eo6UQgwbKvT9d+YrJydJvIIjA8y5rxE2372+U3+8AVy7PyU7qEXl2VjkZ77qaYS2LNMGSsbdfdYjZ4F3GiUDWs4rY0UkHD9wBNM9oLr2nU3TTQQP9sf00AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGpHXBvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGpHXBvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751267393;
	bh=xF3BVXiWBjk+SHxOmlFmi31zlC/CGyQo9KyMt67v2Ks=;
	h=To:Subject:From:Date:From;
	b=jGpHXBvy7y0qXcW0y41+CFfBxVRkL0R+3PEn+oy8Ysh5ek1zfjH7BaTdb1Ke1wwD3
	 nfnV8RY4OjTo9Fi2SJAWdJK835WgJk2eUy8G05KEDg4QePw9xSnYs5TnCBZAHvzvrs
	 dHrzGbDkXZC0k6vgIWRyZr8eVglVzyt3hqyGAOq8kJZ3UuiXUmofn4qUqWnJyB30W0
	 7GBiYkgoZoJLVOXP4k52WeQvktcdhFbG5wb6glWlZCW4pNGD2A7s9sVp6Jv//Wor5I
	 a1pF20lq0qJEAiGYNFeaxMx88RZy1RsxCp7Q+8QVx1hBNgysRaZICh3LN7xo/qG1OC
	 XLf3yp2SPr6lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96424C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126739360.2272.16605221646929663705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e82538e17da968c780323ef68db6a6936f5567e4a79145172014742ad05a23
Date: Mon, 30 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751267393
