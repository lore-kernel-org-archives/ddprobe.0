Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC53AAF78
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786623634; cv=none; b=eo6xGh5MUbbgkZJfKnSe6L415uxW8HY87XhU6vVosbxipTyqwaZON0xb6+sO0lbPZOkuW8QIWfXzVH6TtJPzgP2c4GbZ7zd+YBVx5s9IYaNYqrc5LY9u0pfYJ6qlVmLfWgdhgpcuibsBJpDkddb/2yVfxJ1NgkOrzfR4h78WPPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786623634; c=relaxed/simple;
	bh=7CYJLp1YSfI+hHuuT3LUtnLSVAxwbxR0UHO2BNWNhB8=;
	h=To:Subject:From:Message-Id:Date; b=hJilPqjs77WugEV3FlFx1cH+rUJm9ZEboLd3WzetxntfBrHm/a6oXg4Z+29tMaIuUdBNbZlxthoivTyXysrKLB+bTPLBy/M42wccH9B0gvSbvqc/B7DT75lEIO6mGmBkqvZ1INnltoGSOdZ5EbLzi1GzVuD8vMBYLaO6jHQg3LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNyCAm2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNyCAm2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5924C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786623633;
	bh=7CYJLp1YSfI+hHuuT3LUtnLSVAxwbxR0UHO2BNWNhB8=;
	h=To:Subject:From:Date:From;
	b=SNyCAm2/sSko9pOLTs0313FuUZ4SzhzJ9aB919ZvBQMKC0KqLx3N4+hmnEJIriOeB
	 g5RLGv0rqRnaI3C0DoHtOGFQ+SZ7+crz+9ak8v0gm7uUxzpRkC089yzA5iRONNhOpn
	 HohuQJbDYwp8p9j63jaD/KjdheZ3IY4VjbNWyukPjMZ5hmL6NR/UKZaXmwYoJJAu37
	 w38Y0/8mp7qw7ldZyOOqc2bTfGrE3y1eLez87Xfoq4mds0SrFEkd+uB5zMcLC1x0dT
	 TRBj7h6rTyIES7pCDwFjIK5dbCFms++A6D3HnQmY/U8fzDUWryoxtqmmFHsqd1SfA7
	 nXSrNlr8Tw0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F50C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662363368.3551.18232567662640547867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747611e9a8acfa83a9064429ff45cdf37c6cb0e7cc5cd22218de569fec553868
Date: Thu, 13 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786623633
