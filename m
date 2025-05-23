Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A191A315A
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748030995; cv=none; b=O3TljkyX8TCErw+x8ujygMVD6qnTPqvfnc/ywzGssQxlgLmTKbOoIJa4XuLRpQkTmgX6oyuzRr1PrBcuiooX06e9XdE7ryjYn2RZ6TF6XE7aXQsjTcpIlJqYx64D/HvusxWKlu6+CsNc2FqAyHkI85YDfOS2237iJWuS3RSN3t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748030995; c=relaxed/simple;
	bh=gqG+a9/6wTCepZFTQ+UAgQIIJSz+D4CRN69CbH1FIXA=;
	h=To:Subject:From:Message-Id:Date; b=og8aAwNNGQSjwj/DFvQmIEpcv4AYFNkzR31Dz3nT+Gt9a8Ep5oUYGvNg75FlAe1+pgysVxU+ssggBGKGuMk8OimN4SWkeFUExlqUo8wSCVErIerMC6ABpRHcwoCwpIm+seS3OT/0WZQHZAiMjnT9KSZ9bBDJJJPqI/XI0DweJtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psolYLMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psolYLMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C25C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748030993;
	bh=gqG+a9/6wTCepZFTQ+UAgQIIJSz+D4CRN69CbH1FIXA=;
	h=To:Subject:From:Date:From;
	b=psolYLMIloCGzDzTnI2oY2dWHGn58KhuqbXTZy6vEp+bemzXzwhTk2jOVoIkPr5tD
	 QEXFrfdEx/vpDmlGsna9V+qEb+gnrGVt/bTvpeIA8i3XaRlA30Pw+y3UqBNMkTcOAa
	 PRCa/+2oIJjMT334XJ+Lg9MGIOLmyVNsNS8f6VQW71OMMvXQg6O9HVdvcY6ySdy8iv
	 NndVWtNEL/It8f0bZV6N6SmLzQXhTAOc3wZKp0bmBCcX5vr0gJNvUmi+Cgy7Xuuyph
	 X5SyqqJ718UkhFR1zhycVbMF8sNRe6GKE+eBtsV5hBEI5/dSoLoCVa2kzj7aJLJOg2
	 QwBb1YhVH2p8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B8C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803099357.27071.9484877504226345369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992cad0cbd42cebb197e24e6d6d115435bce384df9ee5d5490204c437671dab1
Date: Fri, 23 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748030993
