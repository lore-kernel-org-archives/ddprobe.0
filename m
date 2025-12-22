Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1764833033D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766420034; cv=none; b=FCyAze4CPdCqDCwHhGt8xlEOfq8G3K8KpP20Fae8z2Ac9i51Dc1BNpf7PqXQiq8ESKRQmEdSIAHOHrzki95Z2opbiNjVW/YqiTEZJgQFth7YRGmrXNqk+WexJbmMv6oGa6WfCPq0LI6aPRisyQnO/JE48TsNGlwdFpm+vC9jPRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766420034; c=relaxed/simple;
	bh=/mkLVEdftjYwOMMYNViD/YNAacUelueofwbUxv5JtuE=;
	h=To:Subject:From:Message-Id:Date; b=Uj9GrBNf9wWFYyfG/4mu0uTriyefif9ckiLbIK5RYpR2lYZXsWKtqV2zZP+Op2y0iMN9PaVT0YUp0xX0j8+S96R+QeNKo9r7Q7TDeDhu4jMKVJgIrmM0Ew7p2C93YtMqj1ag0K7dtVWMfwqC6ENUCm31S4l+BW73W/ZcPT5SeDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNqQicLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNqQicLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F072C113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766420033;
	bh=/mkLVEdftjYwOMMYNViD/YNAacUelueofwbUxv5JtuE=;
	h=To:Subject:From:Date:From;
	b=PNqQicLvhNRvuJfRDROZCjzfKppxNChpEMnrP7kdxYAxACPjJh1KChQES9w6aqly2
	 d01zBIeZLWC3MWbaAJItPJY5MmZVWo1HVGnEcK2Y62w6F0F+e6U1hRqoiSHBqUkoec
	 RaM0PaM2pac1BfKU3PH2QPcZq1umVkkSj4nJCHawHQqKPZYc6y+6a4eygqQ/em3rwZ
	 Wdv456mwt/9dFIuknmCVcIRg26MnPm3axt2r11t4yitrD4EqeVcdQF0YzBnFl5NWST
	 iGhhkITQIOfLdFpwd+zIBIvpZ0lKQgfvvsgTv4n3F5Mtr77/RhFdIXiIjhSSS/k+Zr
	 DuI3MDmHNqOWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7BE677ED
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642003358.13457.835290362855238614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ada1d05baab9b0209dc0cfb893dd7315047c621a953d89b8715315e168b1d6e
Date: Mon, 22 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766420033
