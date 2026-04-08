Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2381E293C42
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775665534; cv=none; b=h/hNmMZ/GhvaKoiITKqYmP3xnqSrEoUiShW/GI5ug04UIPq0aFxoI2r5iKt5D+6H1LgOwIl9K5oFjif2LebI4nPVVnUpjQvhtd+ikqyfep8IxF/hH/jLZJlvQSpIEM5W5QyFNkCTwHhCAhSSlMCb2TPfxHL0XgKhZ8hWeVIJeRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775665534; c=relaxed/simple;
	bh=UkdwuV59kt5lAkaRQZSXb+qMrEUPr9kTKDgeejYXZR0=;
	h=To:Subject:From:Message-Id:Date; b=CDmzLkyFQzOVlEPihDbvw/9os5lg1QLBaD66iNmD5SaGUR+wASLCgcNB0mYC5OjVXbu+Gt+rz9/H8NKaPmRPQX/vP++0/o3J9LjEkd86opGPvygNLSYXIXRmK7lushFQKC80gMxmKOcMA+hYirsY5ZbPJ9ayM7RyKslsw4PXzg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2NhGvYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2NhGvYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE201C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775665533;
	bh=UkdwuV59kt5lAkaRQZSXb+qMrEUPr9kTKDgeejYXZR0=;
	h=To:Subject:From:Date:From;
	b=t2NhGvYHUTKkDfFxfrKkMfSOYbwlnU5o+iJfQ/XEgk5BndneXEro+ivEasnWWsnP/
	 qy+pFbMIuAfB9UsFdmOeVamyQA63ho31+3y3H8QR/wd2rbutBlR412EUhF2eKSoPqM
	 o/Zv6OO4qyQ398PnHuVfW381awE6RlyPwDhwEgL2Re49mS7I2NaswWyRsnU0pCic77
	 0mMZ3on87XZ9tUtJMr6fjey0jIa5K5217X0gJoTPXLBcPQnst/PQYTMkFwXl0kPLN3
	 GbenrzZyoQ+JkoQjFy6Czy4uoCNldMcfZpN3nVUJGjfSHPKV/t45aIGsGk/BV/qjWs
	 2B1+CGKHTzPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF39010F995C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566553370.15164.744055169572864635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5929ba84fd9a5ca4cfcde4834f3a2f0c2dd53c8cef5d6913443b300758b5ea2b
Date: Wed, 08 Apr 2026 16:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775665533
