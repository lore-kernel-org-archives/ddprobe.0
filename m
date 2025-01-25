Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D9145C18
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737822954; cv=none; b=kEsxOFduCsp9V2gamH8mNba9vCfP6BOksRmM+HQ1dmtveNRrRQ6YmlEjrjHXTAcMhOXKMwmO612MJn87PPKnYc1eMev/6SQIR4rRGoZa/ilsGMPbBTlfQtNW/vZ4Z2bEGGZEFYvwIMcYhwiKLb3rJ2dKWGekpDpLYGa/0XZAMJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737822954; c=relaxed/simple;
	bh=AfmBPlGE84/+lsrPJN8tK+95yfql+2Y9z4oyzRDryTQ=;
	h=To:Subject:From:Message-Id:Date; b=VlLN40Od5+PkDqRwqvt1Hg8NM6ZKhbD1sq1aRhmN46zZNZQk/Y0xOxnVu2RSc8Uc3nvLQoLdDFZP7D0M9wMKIqAoAQrnJyiRcP/0eb7M/GqtmCTXb6ytF00JD+tX2gzrB6YYf1wni+o6KJYi0prE0ERthuwUSZt8TUgeu4aV9J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+t7LTJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+t7LTJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7291C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737822953;
	bh=AfmBPlGE84/+lsrPJN8tK+95yfql+2Y9z4oyzRDryTQ=;
	h=To:Subject:From:Date:From;
	b=J+t7LTJrO96oYAOSJAx6/MlMF8NwiaEwGTXcGvuo5ZAqGNjUTmCKuCfopOV8yyUGI
	 l4SB5JXH9mjeR7vMOaqpcB53glLiG+Iz+MPkyFcrHiBZWiIdkScdLUpMA/hFFki+Vr
	 253xAW2Vk+HyvBdBWQBytUaGrwAcDQ4CvLlZ3myit6OXZGbzr4ziLnd+F6hSdflrn0
	 ogvnqSKttCo0ohvHvRfDH1taguu0zAy2h9TQlhwmVs4lrxb9KWZ7N/Oj9vJAOtyAMa
	 TxzJ5xepJf7dbVP7OovsMzRsDYHcRcktbxcxcxL3V6WuEo1ZbfX6BzF3mRoYLHMCOL
	 gNGGkfTe/9HLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AEAC0218D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782295358.27206.13749381466384097526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ac54093639e201fe7dd63632d9c0c4dfa6d7603ae366e8325755eea5a23bd0
Date: Sat, 25 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737822953
