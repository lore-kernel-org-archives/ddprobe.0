Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4EB280327
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771677294; cv=none; b=fpkgXcBuAPBjFviNfOfSfWEYjxT8/MpCcVlWYiRQIzWl/IsAEtHc7+y9tAG8PuqqTc1bl7nOEG3+BFhgC4hAwAGD2GO+IdD3SSxthbPEXHC9i6REqveDrceq/rFH9mNN50wWMi4YgBot3A046AMe1A0AL5rNARL6y5k1gNVJJ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771677294; c=relaxed/simple;
	bh=UufXf4zNEd3+4S9v5yebYKHyFBrSNITi3N7+5UXi1Mo=;
	h=To:Subject:From:Message-Id:Date; b=Cs1j+adDQ9AjqnQB9MWFvhUw6lHbuPlc2x7UNsGG9IhHDZ9ygbv6CN2IwuvzsCgt7XyyZBIp7/3T6r7XZK1QKzyj80JT9vbskgUo+35GqhfupvhlRh6Mub+p63wc2wYg2uNtlNqCRBM3AoKxmEoq+mN/mWL2rLiCVNI7Au/zpWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvWjMh1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvWjMh1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5078C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771677293;
	bh=UufXf4zNEd3+4S9v5yebYKHyFBrSNITi3N7+5UXi1Mo=;
	h=To:Subject:From:Date:From;
	b=VvWjMh1IVl1YDMhFLBs47W1b4cmqkm5YUqV6wqswOXE/6TyTSrKK5noGOq3j+6eNl
	 7mmEabPXdg1/eQa1mcT/5Aj6pG7btEcWwM1sbu4/j4R83ZejIY0VifKM6KkEN7G5eu
	 j/m0utNVqbWs4E4sqXs4ShnKXd4kDudiZ7poIDleNWW+R9kQAMPzhHzSyxWVU5k17W
	 KCPAPhCr6yueqaBiKECAmPeuGNRnmkB4HwyAG8a9tADLZ6KJ1fWjJ9FiTt0Qor2hmv
	 CP6sUjPJmGptWr0ifjPNhXAmq/0CAaFdbuyeXJuHig1Q0CWjsS6x1QTSgtqZYlj7oK
	 yeAEeLRK5Dsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0143C61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167729358.7273.18256111381601649583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956983e40de92587e845dbc186848831f8c5818433e6c43afbc44e87da9b3112
Date: Sat, 21 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771677293
