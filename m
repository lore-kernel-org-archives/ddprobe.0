Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FBC53E30
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711345697; cv=none; b=FvNjEDWI0M6eMw4Nnu23Vb/mdS7NMyuAuzBUXQEyVMFsuvnD+Ath/LGMBXuYF/acmWrFgwDVR8nIMsyhRDV/IFK81iuyUxbsyjOhZaV5YKM0+R7bWrqgsnJAwrBYQJCFM+dm7Vt0BhvxhXIa3q9NlPmFNXOmPeeBOJS62d+3sb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711345697; c=relaxed/simple;
	bh=fLjuch5j9b7JcZoxoaDqtjm4BrGJo7DkwkC8YoKTwT8=;
	h=To:Subject:From:Message-Id:Date; b=ttSkVFbRnK1m9OPOvljQKghNqmXQx3Zs+BXsu4NIymXck+JvxJ2dI53xRjpcnt8exUlv5NaAZ5KGAuGWUXaO7UfN+Uw+WDeS8BTnsDeEGkLq2Ar3FvG/qB+ENXvD4B8uax0Ig6eaH3TeN5NF9KsIDHNnzKtBIPquE63caHg8Rfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiGhxOLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiGhxOLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7940CC433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711345696;
	bh=fLjuch5j9b7JcZoxoaDqtjm4BrGJo7DkwkC8YoKTwT8=;
	h=To:Subject:From:Date:From;
	b=FiGhxOLHlLj8TfAp0vYJx0QcZK1QKBzspdYcBo0Gl1WBf5a6d+re9NLIwyZ1jyh/l
	 K3Rb5p6ZmcBNQ/B7lbdCHU2Yix84h/xB5frYWdRbTOdYj+eUAtpx3PwZQOEwvC5psK
	 peMZ7ZQX3XxyGQwgNCc5zrgkC95MM3pvTo1j+tLlL9ai3qze+L68zlT0sMd7LJbQYf
	 DCDAF7crklfTID/jaZIjcjnqirD4aEnfo5bDFcO6/Dm3NEHxbDYi4PF0wCQhVfeBqi
	 ZVldeul7JYcLLFVUKtf1bxkiNM+miHld+XnJEXh+eHXQAiL1ZvqozgMgjlaZzQQcbu
	 Ek/fAj4QIT7qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BD6C54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171134569638.19520.12211861430376181365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa3d3e760bf4b3849d8ae298a3221ad4cfabd0d1496d47ef32f51aa3d3a6946
Date: Mon, 25 Mar 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711345696
