Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC3223958D
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774766694; cv=none; b=PWXZuqLdfwdFjGu9ZrzYsawEsnyK8g8UAaOfdm7AGXsFHgL3rwMo89ki1WChkHvY5Xt5QbPHtamkR2d28E9W+NjC4GDnUR0a/R5AgsFArijPjqUE9Ny5ustalZGbZJR6ysQBydcPUzZd6ArXz0N6Mzcm2+hTW7gLJHEcMdAqUds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774766694; c=relaxed/simple;
	bh=iEHhX+9Zy4Dj0y/AmZyXf5s+G0kFP8C5WDakNUOf4VI=;
	h=To:Subject:From:Message-Id:Date; b=M/leW2JNn6D+aOu6/ngwaykiXkswbYLAKU/qfE1F8alNNnDSfVGY5l1q9x0TgA551Onrz27OCVPgKM5FeOb/wPutn/xLZvSyCEDcPu9rrHLf3SyjqeQgT4kBCziOyGCuplSBUh80JStDn+M9B0armOd2TZrx8EAYqqsBKVMw8sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CO8rL5uG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CO8rL5uG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8449C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774766693;
	bh=iEHhX+9Zy4Dj0y/AmZyXf5s+G0kFP8C5WDakNUOf4VI=;
	h=To:Subject:From:Date:From;
	b=CO8rL5uGHS1+TXZDytuOWEuCLhN+GzrHOV6brGUFO2HVTbE/Gvv8LKAod+Vx4dlhp
	 GLalcGfIQDCOS7/S4nGSEU6po++UkvE+WhpnyLam9L+FZnVTb4X57ptMctacrVokHJ
	 Vy9BZXckfW+WZ/k+DHEKpcwDELnWuntPPFvR6yThUKE1gnLYRmsiNecAxMaFinzLah
	 KESXLPkPU1hQVUK5al3GkHOs/ZntW3IeXZeP3SUvMzHAvuVgF0d13qvT6rydjfu98Q
	 ajGl3aCqYPBF6hEIjRYifTGxiIa6Rjt7xSZIkJ5bkh0vPlN3eHgkl2CRUi3MIrtjPU
	 6PiV7N7DKQyzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93321F3D5F3
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476669358.29919.10531860585797701782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d79a6c424cdbc69de565fc9d500a59572f4e302d6599e508a9335a7d66ab14
Date: Sun, 29 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774766693
