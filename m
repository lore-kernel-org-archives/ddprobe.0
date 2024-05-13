Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1E7145B3D
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715582543; cv=none; b=h1GcmMM1TjBQtcanrJmDWLLf5m585Oo6X0k7DqnjaL86uzhrVroixsz3NIHZ15L5GtGh+GkEad/TRZjrM0tha9B3N+vGdMgNg5i6wzytqPJCp8P7a1kogvLJSdDwWvy8cKVsWmWiDImwVdVNKeNwJqZOPrb34RilA3IGNSTV/Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715582543; c=relaxed/simple;
	bh=gShsWwqvMnapxJ9Z7ZjmOsq+nMG9midFwFcWoi72VAE=;
	h=To:Subject:From:Message-Id:Date; b=o3w6Rsexfrw4+Hi2eB+g6uf7y1v0ENaQHdlQkIZAUNSF2GCjjTnn19QXE0O0v8omHtg+Ddy27y0Zk9Odawaq9EEwSmz6UgakmeKE+/DEL3uDKtApz+GYRIBT4p3HGbW3kQvOtcJH5zMKS4tD7qFZzk3IXe0+/D9Cy9TxV4dVKd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGWE8NLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGWE8NLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49B0C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715582542;
	bh=gShsWwqvMnapxJ9Z7ZjmOsq+nMG9midFwFcWoi72VAE=;
	h=To:Subject:From:Date:From;
	b=NGWE8NLOrMSaFqD5dGqykc9bvnW7R44YwP97SVUlAY4kwBHtlM/yJyjiI0DkVsFCE
	 MpS+DBa6H8Lx/ULAuVdWWUxLdQh1XHClJFhMa+g75+WFeI/KO5SS1CXfNKUWTDFfZ+
	 kKdc+8oKwXLPd4xoIWdYAy434aakYF5WGF2/4OMHLtMpVyyBIuJNDW7jNPqPq4gJ1w
	 Ompnapn7s3qZUtZhKPQDOS9gnKzmp3vlV5M5Xw//UAWZsorkd56OYpZ/gOkEOKVdYm
	 NlMXAIiSDlg+lSEG4mR77Zo5GUL2JiyliHCuu2UEYMLpTwc8cA1bJMNtcy/D3db2To
	 soagzVWY9MaoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C38C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171558254278.2426.15218701337052454331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b5a6f63f4fc007c2a022f44b3b91a1dce2cd2420611e36e5ca514c9a829d7a
Date: Mon, 13 May 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715582542
