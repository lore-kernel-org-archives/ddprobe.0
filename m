Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4983E5587
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774609496; cv=none; b=FqQ1saN60Ic/8e6h5c8OPG6blb8RvLb6VEfUQX0p/G+B2Lpo39ZIlSdNKPWkDhG32Pwn5I4HVMkm1bULb4+GkYgO0HysynCbP5R5ctgJDpKKZElUlZr+gH5jy3Qq8tLBUZw8dz1THp4+BX0iTfdJZrqDQIpCskVFME1Y3tR3gZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774609496; c=relaxed/simple;
	bh=z/KNo6qQlAI1iqskD0VOq+gIiiTKzZghmnU7eIr9uBw=;
	h=To:Subject:From:Message-Id:Date; b=lJwiF5h3xwwmx3Od5x3DRu5MH5pSXkDTzJDI4wu8PDZHgxbLCNV8Qx5uUwbkeJnUbOImsuFo89naEdYLUayj5x/Kl1bR2HMAQtgVYmEWeMBRzjE4ZuO2XSv1kkvCHzL7G2vn5FL6oJT2UBJlBKeKqyZyhSPzRJSuVSdWrXuyZhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpaJCfKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpaJCfKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A716EC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774609493;
	bh=z/KNo6qQlAI1iqskD0VOq+gIiiTKzZghmnU7eIr9uBw=;
	h=To:Subject:From:Date:From;
	b=FpaJCfKbuq7rRJmYISUvnplzh5sdDdsp0He0puram2KtKlgx8DjfQHR8cxSzDm9cT
	 3iNIz8PbQLGHBLoFIsG9LvBxNmnhOetvwrtfWlF3S7QKBLCmPLRCQ5xYlusdVF7hF6
	 eVgn/RY5pf7OCiXIHMs8wASbFIkDoK/WOmKVhzAd4CaiVIo2fCQUNoBD+4D+233YV2
	 zWBscqaaqWywmUo/7EeNUOz+i7+c5Dn54CLfmkCHF0KpKERs/48OnkspxdCuLMfROH
	 PXkbJEuquw9h4iMi4maFsOdrsWTIzT+cAnh5QyyxiQ6+3E1u84TtR/xEeLhpAOMOvJ
	 5eot4OFbrM6yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EEA10ED65A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460949358.20778.7714426736020706639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4736522158b544a82949e49e42a6e39c2233f7fe36083e55a84c52a168ecbcbb
Date: Fri, 27 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774609493
