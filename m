Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE1C146A73
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713366563; cv=none; b=Yxzl5zX+BsbxzxR6JGK1kCJvnYsMkDqz7ifGFHAtT1fKPjXTW3Cdp3V0/T1fUqfvVI/3uOKBPGFCpU7OejWtmzNvjbXetwNkJ8ceIzdn2lFM3l5T++bjjTagHGjD9yRLkQ5v+ny0iWevtq72yKR6UZ+qVVIYxuiKADfP/hoVPu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713366563; c=relaxed/simple;
	bh=evmtzEVwFKENRfJesElqDHuuBJksUA72oxn/b3ASvMc=;
	h=To:Subject:From:Message-Id:Date; b=TSBP3UwGwOcfFitunfUx9HztTCtNUvdbP7/TMa1/GQIHv6Qh4ghR0YJV8h0E0D3DLMwPYtmscaG/mZfcosQIgyDdPDNz5UlCxXRjjNVVO0ir1Nvy9lf8TY2zDI1aGkDS0QDwrl58QbywMyghLeob1PkUs6g8/18/BFMLUoXtEOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJTeMyT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJTeMyT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC2EC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713366562;
	bh=evmtzEVwFKENRfJesElqDHuuBJksUA72oxn/b3ASvMc=;
	h=To:Subject:From:Date:From;
	b=LJTeMyT3uu1hl0EOr6txry9EuA+XyrlC9oxj0wG03rnRDpUxoneVEdqfoxeWqA1mN
	 S+DqwbZxAL83EzmK9Jq0Y4lmrpR7aBIa7GF2QYNX+0XjgIpB4njZcVoXdZ6WMbVd/t
	 s1EWbrc9JiV4ZF9PTiaxGmG1Ce24SJwNg75T7d1QIhOqBQ2ak7wILTgUUdyXUuZUaE
	 r//z3mPEiAnUFJSWHfxE+p0Jzd1EKyhdyvn3fMWGpBEBYPB+QE5OKcc/pMHcg41Mwn
	 I/X+cHDVWl0AKiOiO74u9E4WWlkdCFQKxKbqFmC6cSRpddub3ULLCwzRLPup88FMxl
	 sHDajeBmmk/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FFCC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171336656279.9514.14629802294224589222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e253863e4209864955824fcb6f93473669c630d6c468fd2763585b3d70eba8e
Date: Wed, 17 Apr 2024 15:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713366562
