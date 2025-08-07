Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1B21400C
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754575794; cv=none; b=DAz9v901WIJrWtpLEk/FLN0F3RtmJJ+QN/d1exjZrp+3HAMmBr5MNkX2QUxqhB0IJ6QJei9nNTN8H3+DepBKHjaxKoaCOw61MuyGFPG7jnliQj5FJZu1eBVNJYGc068Fa2Vv+ZgcdmgtwHHv+Dny4fdMcNt71zX1M/1yLYC3T6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754575794; c=relaxed/simple;
	bh=dX6R7+lfIOjZc3H/WZrM62cpTjj3XdOaic5r8BdBF/4=;
	h=To:Subject:From:Message-Id:Date; b=PDknsOznoGiUR1cDgdCw3hrOXGVFCL5vEZa3ZRev0WKXpRgBsUkNxf1rr68cZKuT2B8A4BAsIAj4EiYo4aWtFkMlpRJeIv9orcTmp5ZxJC/yjcnhkKE6inOVjFOOmKQqyhZ/ljFSS5iYeyc79iVWSTu3KApWfAa5lKRwNLCAMzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjfwsXlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjfwsXlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0888C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754575793;
	bh=dX6R7+lfIOjZc3H/WZrM62cpTjj3XdOaic5r8BdBF/4=;
	h=To:Subject:From:Date:From;
	b=BjfwsXlm9DVVU4hv3OcVJdsz+YvJfOkPVcVjXNMcU3Ol6SVkigNP3LEnWSt6KQsgD
	 iinWq3BmBjJdZywNunwWtqhZB/BBepG1royZ5elJEB9G2/Ow2y8Ho3cqXV0WoaQMbq
	 U14qrDwn0zRR94DEN5daPZVN33JY+1hhzCqW3Uf8DtKYEsJbrhQTBojff/5Q7ieW11
	 VV4PcnW8QgF5lMRznnh9W0ANbPRqxMAdVcwnZKD8rOurqDNsxWQGUyjAivAxvJoEej
	 zvt4Q8sXkh2ZSo76x8jBLYyNQRhyCHyNmZQ4+7ciTQXfEeSrTjTBuS0XH8zCt4Az4D
	 2YvVcgtkANIQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DF9C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457579358.27398.7556170608691583420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3158d9ef1078f24ababc097438ce5200341a2ae315ea5c57afb3747c5ad79350
Date: Thu, 07 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754575793
