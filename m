Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF8532A3E5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776421656; cv=none; b=WVF4eVDQwhDr8pNLiA3ylUCKxxmaAWoHtBO5xKgHJ7l13Uu+fzgE64LPJmUtt9n5G04zZI2LTUbagpANojMg2so9JfDa3xGZSwOZBFxCrXS/d4Ow6AKnV/WJmdDRGXWq4/2LsPBxbO5uYvYz2ObY2XD3LyK1cb0ukKL9hzj5DWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776421656; c=relaxed/simple;
	bh=j9YnCZxDWhEKIzcy3q2aKXEbw3+SMoZEkDiasV1dEEs=;
	h=To:Subject:From:Message-Id:Date; b=AkaGorLLlPyYle4rYrV5X3UGMWk4SZg8b9l1o20EnDjv0ognZc8ZWpta0/bdHMdNT8G9sl6CYeEtEYVj3YJVxrn3uFgFpmMpnFaEUYTRRIkM65+smlBW5QlxsGCyzT49KjjjugoIWj1yUK8+YTiHknNPpK3DV805rC8ub3ulwJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYYViLR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYYViLR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB96DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776421653;
	bh=j9YnCZxDWhEKIzcy3q2aKXEbw3+SMoZEkDiasV1dEEs=;
	h=To:Subject:From:Date:From;
	b=mYYViLR+XM3DOQcKgvmPxIebbttS+xzgZPL0IhXXx2bANb61UfC13gd5atHHkeU/k
	 Jnph2+XkzZ8G1Uoj6ThL4YfFFh2NpKuKnZymmRI2rGQBXbO+QKm4JN2vLNn9BnHCYK
	 DCCW3t6oSAsIJfGODiAs49DbF/6CoCHSagCh7bwNl3YqATc0/qR2vrZVQ3H9/m6vqq
	 4rXGPNcnq4HMwfGNPwe7c5dqKvQg99tOhapRLjvnA4ELrRjqdQtETxqE79vHMIKQw9
	 m3N61X4gEcx8+wWYizxAFFsHQ2JCL6dKB/kyz452WaOoXlpc492Rmp8//bnG/mssFf
	 /7CKB6GzY3tXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C92F4368A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642165368.32135.899289360289858949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8b010f11a941cb0c98039049df222f328591347ae5694e33c9441cb3e6eb1a
Date: Fri, 17 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776421653
