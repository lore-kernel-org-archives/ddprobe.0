Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F69A202F65
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760222394; cv=none; b=R/pdaBarBST7gOnExU3kunuqTXGxl9dur0zI9JhR+evMdZfoaR+oXDv9vOlNQK8kZ9cSSlPZNGys1CjMsN3Nllt3x1R8Xu48TpicDYAreMXSht/cDZV7G+dIOkPJu8nOUkILu8hJfR3OBeo6ItpKBXaWe69B+thD5rpyJT2h1Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760222394; c=relaxed/simple;
	bh=CssXkq6EWYbeFkGWq3w56qnOpSxZylwAzl+ffk4hWeE=;
	h=To:Subject:From:Message-Id:Date; b=cstxgwy8pFOw0bLHiZm23XBeUjhURgoWkxURjOuClpqTRS6G8i0obJbTAbyg0smX4Vze7Viib3fbp2mNcdZFG2/u4cafCWjLVvpgz+L5DJiGtpvXDKqcJ3boPcb0qiDk2xOjHYN+vh4XdUFTeEoxvX8qkJRjpdUP5gY0Q/b5i1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXB2bjF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXB2bjF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01C8C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760222393;
	bh=CssXkq6EWYbeFkGWq3w56qnOpSxZylwAzl+ffk4hWeE=;
	h=To:Subject:From:Date:From;
	b=FXB2bjF0W0hLx5IAHFAYmxNb5vnm8RwW6TmfE/KPamq2QUpXk5ATKSWJQsO6rLjCQ
	 swKhe1RMzNzK2Z8KULwti0lv2rLHGnZG2x3Yi3raolOHCLVw0Wk/m7rS/QNx20neSz
	 DOgswSM+61DkDo/8xBjxLoA2RTS79P3fAy8k8gPeFahsJ0SQKjmkH/HQ39lowpLyHq
	 8V1/TRJ09Ui9i+GIVnb/a9woW8iYORvJD3WJnBR2O6y/QuClAG0RlucyzFPO53c0Aj
	 ht+YihAXtPJi+4e7hLDfrgf2UUBxetDa2Ud5Lxw6gkW5ZNJqSTYLfC4lAOzmMrUXLe
	 5+CnMajTukurA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE0CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022239357.7341.17456687785850061408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099cbee7d8cb205f97cdb4dbc60efd5dfcd32999962771a5c34e6d82f47e03f7
Date: Sat, 11 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760222393
