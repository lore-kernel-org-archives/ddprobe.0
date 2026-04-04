Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F441A3157
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775346934; cv=none; b=s4LxjynBd9Vu9s+zkj2kZFQkognF+VL3mH/ght2dCNJNAKz5Em+K06zrcQgJi5vrg4pQbRWzahNYJ3z/sz2nOqFA0uE7+684OeNR8GLdbHzCOtYfViUSV9Oj6HdmcnRohVH+d3uoQxMLRQ0Pl5eSfN3w77nKHRjQsJDY1cFLgLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775346934; c=relaxed/simple;
	bh=xjSA6MGAKqmSZ5aI4W0zgCPN7Nh8BK2hcAD4uQUnFtM=;
	h=To:Subject:From:Message-Id:Date; b=mKaZQRrVdX9U5Q6y959HzJKm0ca+GbSUCuB27Lfj93nuZSag2SM7KARyPFpwueg20IFUg+HkvNpZ6vxcbwdGztqFCYwE9doeE7a8kou7+6lEkotz6H/BGB8aYNr9PXnK0dICC0h3r5T9W4uLpdzZO/2fQzjT2mlBGkNe1gn9cL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvVaVHY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvVaVHY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C0BC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775346933;
	bh=xjSA6MGAKqmSZ5aI4W0zgCPN7Nh8BK2hcAD4uQUnFtM=;
	h=To:Subject:From:Date:From;
	b=CvVaVHY/TyQWhuUGWjn4EXHTrYYNFP6Z8EbR4AmEImxl1LsBF7cKAhybZY3eLCKE8
	 25VvtODsETWnlCvEkZfWuQ8pHBf2JQx7smT5rzJK2DYgSOkjlDqVUXQ8g6BAOe+gSa
	 ZHAcFJ9ejstLMHZApxqKHfvQZBeAKWOuDVuusoNwkS+uMtTf2mmgknIpOPlY6/s6d/
	 frOD2QiiZJ5fIONrTKZnKqvvYupLrwM39TtDYuwbBr91vEgHi7lWjkc0sud3Ed8t1b
	 zdIl1CzXQKxZ9Uvrdd6vsxsKQ3UHP4/RuabwvbYIqN5aYkej4Kz41ow5VF3WDAzNIT
	 I2GI/zvEO4NtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25FEE63FE6
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534693370.1421.12223926448473697869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281aa16237d29c2d61097c9dfaa6708266fded506086761b8469209cda3a011d
Date: Sat, 04 Apr 2026 23:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775346933
