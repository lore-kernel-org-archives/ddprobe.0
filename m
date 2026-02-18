Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FB972634
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771378494; cv=none; b=ebiK78MaSqKYgd0gqYsWwiiQkiOV5uGsnVoJa5NWo/p13BCm1FqmQ21yJc1mbcKWyakMqB910vGSRNv8dNFhMNWqjJW79OHEaHKslJhEOWA4ib+S78x7ajWt77D35cYYxbxCoDJRzQGbePxuKKmKE32gS15jyho/Vd5Hen23JW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771378494; c=relaxed/simple;
	bh=GTyXRdJoV8jrxAZB2yPHZcwf3CwPrYpBMzsowGwHXEk=;
	h=To:Subject:From:Message-Id:Date; b=Jae2CU1L52rKFt2YjUTFZni/MNxSv1CrG0ofOxzdW47Lhu1LhRdISX3lv0ZqDZpNrNNpgHS+8jcNyC6NuEipfone26TGiGXP7xhxFAFJs/Jd8esTjOB1rSQfFB1/Jd/LTxU/8ZwxpRrBfSjcBU1A758qljoaXWntQq4ZSr+ZtwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpON8eGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpON8eGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD3EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771378493;
	bh=GTyXRdJoV8jrxAZB2yPHZcwf3CwPrYpBMzsowGwHXEk=;
	h=To:Subject:From:Date:From;
	b=HpON8eGHiTmt73gkwKQcsjtvv6jrqmPafyTJ9ibBPbinIpQ5DBe8LmvSd9ktWl1oD
	 TFivfLiUPI69DLCc5uKAimmaBs0UNXyW/snHU/97JZewattxMCWtCl+mhNRkfJRsNL
	 Xkk/7/ecFiD1KBB4HxdVymbgq2ABa3XBxN4OcjJTL+KGz0zAvk+3JAHHxuB9Wopz2A
	 j3xIV77svp3RwFqsE+ctT64OaFet6V+NmAY+015mk6n7z5K287CFvRCpjro8Davk/t
	 oeVYWaMrcMHDyq6bCfFfa2FFfyNJDqIxbeWP2KhOdalw+/XBBqCw0zb6CPVtN5Rbh7
	 RKv79+PzqHG8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A30E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137849358.16745.6025594168953597722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6571852a796001195c841b0612d6cf17068079de4abfd752958921d7da8a9a
Date: Wed, 18 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771378493
