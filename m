Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD8DAD27
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736080554; cv=none; b=D3O5yTKhl2w0lfdaYyHM8V/6mSdDjzBdIT5AHf0a+emLq9UjQhasumqPl9cvJQan/ucxbdgVLlFVvbAjX1bxbWlFJOKc7+PK0CZrFl9bdlcvbq9jrTQh9HBxk065CIur7rE/9MCwNqDpzR7Ee7pOb0nHb1JTFByGn9DGQPutaP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736080554; c=relaxed/simple;
	bh=uW0Qq+uA6J+Y3EbnwUPiRJHJWW0wNZOWwFOtPdP8l/c=;
	h=To:Subject:From:Message-Id:Date; b=c2oCWKcHH/ZuI7C23tCieVojN4gvqueLz6uTp9819aoYl+yVUhAg586wQucNJ/wr4MoIgQgwVS5goyRkagucmhpaWz96qItPfqQJ/j3hC9Rq2uGXK8HCkVyY4bL9cGAUnLvy3zHBQ98nKm+irwJcfiNon5FkIvWOi5PUvGn6aRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbLvQGOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbLvQGOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB59C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736080553;
	bh=uW0Qq+uA6J+Y3EbnwUPiRJHJWW0wNZOWwFOtPdP8l/c=;
	h=To:Subject:From:Date:From;
	b=BbLvQGOSJmpYzcpNw6esXyxwCcrYx1VXUDsj+IJfkhisyeT0yGZctIzPjU2vhLI+I
	 sWNiLrhm03VUS3l6masUblyli48x+lNf0FiG3xxUH0bNe/cZKY5d+skZLARilBz4d/
	 pXnF9ETaXS0g43h8cnfiSlJaIFpoUAmzFx7MzA9I6X8zOkoetu44wAkavdh7LP2cog
	 Hy1qPM/j9i6TFuAB9U7EwsM4kp2SKj6wy4r3xCyLHNYJJVIcgOaJaLrh9z91x0t7J0
	 afFTAagHz3ReNzDCUlilEj43i/8Dzkr0/t7PtervQrnUVs7dFBj9l73RvCwifiRkTz
	 2kBPCxYyETdOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EDAE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608055365.9006.9870920430404793808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52debb7eabe5d490e4dd3173f503cef5c0d81ed6fd637099b857da9dd0fa8472
Date: Sun, 05 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736080553
