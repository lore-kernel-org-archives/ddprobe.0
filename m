Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5474D30AD15
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761239394; cv=none; b=PtUSkQOW0D9wkgX6L3/gIXHgu7mDP3oINudUH2PaQ9D6LrzFuaZxjA/k9DL4lZ9g8uKB2R3nbmbKyJXrqUoqLUBXJuXDO9rrPq2J375bJmfmhxE88xKz1nblaYU9AZlRutlX8drnUzwMJQZqWx498JG9YBNAjity6rFMXoPgYjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761239394; c=relaxed/simple;
	bh=hGOYuFsJor3O9HOgxuUMy+vMgRlJAwOQMxwMTERSTO0=;
	h=To:Subject:From:Message-Id:Date; b=A/RojkQ7pREFKZafucRI/BIuClYkHzNCeckI3jgqWnulA82zlvDnf8p+paqZnOYbyT/xlFwCh0DedN+oIBt26r3pqwewoUs/FKyBP2IapAjDvnhZN+ndjD+N8AL6nsOz+hTMqyEdEN4bAZMfkmqJIF7HTgUtVUef3jOmcjiqPLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxrKmSiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxrKmSiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ACDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761239393;
	bh=hGOYuFsJor3O9HOgxuUMy+vMgRlJAwOQMxwMTERSTO0=;
	h=To:Subject:From:Date:From;
	b=qxrKmSiMrsw63NoTJt4KaPabEq4cjG/Pyr9lp1M6Qh8N1rFWMzqS670Jw2RAZQb3Y
	 awyIOZlB6bKdnlXr51+v1+IjkH0Vdv0REjCHlZemBWEe07iR9r1J2dyeq8Yl3P2Qwl
	 yZPujQ6U87snqmdYS9Nse1TwSLywlr0SQwHLpJq5a6ZLulW7PGtqWBlsufI5jqyajs
	 Qj5Ljy3DCOvNSxT8MQHnP18Hh0D24uYsUVUjQfL0kPPDDs2n1HuIBII0pYNwlb3eVl
	 tbl/dlH5r0iTACUPLcVTqDt5Fx4HymMfhk8OnU+wYeCRFcgZBZwjPP7WKMYBlPYmqQ
	 t1w5Zz7yzWldQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51B8CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123939371.18198.1072064737841723380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74b139962982f6d4588ccf798bde21c57ccab04ffd9abee25528c50ca9e9d08
Date: Thu, 23 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761239393
