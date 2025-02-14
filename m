Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357A9155335
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739509734; cv=none; b=kTkbszALrqYNdLAtx7tXoNOLKl5xfh/aDO4pVH3o7HNICo59GL5e/ivF9EFg5nxkifsgvgzGs39N4Y5JTjTFi0B6klTOD6duMs8ages4Iy4eegjnWhCj+E58HhfbS+MTs1cpwzn2z/c9YkU3pef+fuop2ZpMhJ3KVBxQbxDxGZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739509734; c=relaxed/simple;
	bh=x/SboLZ2ug+Dpg6hPrqZLauscIA7Zno7hTkjQ+viNZY=;
	h=To:Subject:From:Message-Id:Date; b=TTfzG4WmfrIv5ORG5aqa23uHlSzdtslj/5kOW1dzE3C6QFYvQU2GkUlLRz9n8VZyFbJOJ/Aj9o1aHBkxzfjeYH/gbBdABk3I7Pm1LdYD/tAeUCilcPgyS+F5Th32GLvUWWOLQUaKSrKvE5gG1GvnePwKHdPcM2BAjZnxHwGbch8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMEWUURq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMEWUURq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AACC4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739509733;
	bh=x/SboLZ2ug+Dpg6hPrqZLauscIA7Zno7hTkjQ+viNZY=;
	h=To:Subject:From:Date:From;
	b=BMEWUURqGa77wD6rlYHxFVfzOu7zdGKEDHL8v0VruAEjoDaT68MRQkBJgyxFjoZcz
	 3XbTy8tq1fZ4jj/7gqLvQ/tj4EdKMDrKVE+FOXq/t4JpeWYHVeWwCGWkFxoAuMRcOC
	 4iwSiyDO+KZOR5IaivqfCrxBTOZ8WZWlRn0ZHEQhoKVRRWMwPPYmL9V8p99aF2ObXy
	 RGmfBl1Eu8OV5t2d8By6oe2RCSlkucgorcs1s2JEeGmwGrsD8NP6Ra2lS6BV/EKDhJ
	 xHdQ25r35NKisKQxDkWa+RVgA8lKXwzAc2+6OR0Az62pU3i0MdtOiy+9yRhSGEdoA/
	 C1b+8ituQ9MLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087AC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173950973358.9754.16386484913920792263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cd5f99976d1d96756d7bb14d256a50dc958dd26879e3626fe0e05a60c2883c
Date: Fri, 14 Feb 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739509733
