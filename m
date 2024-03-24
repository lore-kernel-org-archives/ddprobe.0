Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFBC1A38FC
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711285097; cv=none; b=JqO7YPwA1nSyUzKrpzgiQKLPpshV5Puq4ghUVTBO/Wlx10YuCZ8kNzXg4oClGgQVHSaGLXY8a5lo5lSTbX/RvkW/gY2a/+A7zF9FaL2/pgHjkgOi5TNlpbB4aRPwqRyMBPsTm0XSxJTJ22MDSxCHgrJYacKNMBXDaAK1hYhsn70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711285097; c=relaxed/simple;
	bh=LH+93o9o2VD9uwEL7a1Qde8+flWTe+7FUxvy/bnTqz4=;
	h=To:Subject:From:Message-Id:Date; b=QyXp/8vtks8aIXRl7l2GgmHy4fGuVabNkOLBu/LEX4clJnAeJTkHFStuMxENYElk1CIoPpXI4/EmkZEofoot3ui8nmw+ai6IQW4kHusE1SieRlTJENTMOCy0VtClA6vGznuajoeGq6HEQKoXNpoPwy0NSREihez/H5LB9Zy0Zj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVtIFRvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVtIFRvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D63C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711285096;
	bh=LH+93o9o2VD9uwEL7a1Qde8+flWTe+7FUxvy/bnTqz4=;
	h=To:Subject:From:Date:From;
	b=dVtIFRvLvuVDvZ6DDI8eXPepdZym6lyjWgV0taSp9hiqBdZXs54PNAyVNi14on9Je
	 /N/yngNv3HV9I3F9vytf+tJOGW63Hxl9YypV76jCdCjndCzmDJrvz6e7phSieKiffa
	 PI+Y/p/+0gvRJURrb3cdTp/aRSC50uUHOjYby8CE8+X3a2JpOgLa+sHZKW3bxjMxpo
	 qJuxHciWb/LZrbJO+E8MdZgQma/fY5Df177FVwhYkSZEa64N6htBUwVa/6YqeSrG8v
	 X1IEPnYcAlaUQqsxEGl/MODn5dSG7O3TKcsu3YT1tTIbgXk+Z2pW8kWTXSTQgnv67N
	 m9dUa2bDTaiwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C799C54E58
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171128509641.11070.15127320088940369907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ee79c2308549e9d549919eb235767ee44fca54a7c74dddd622e95df2e42753
Date: Sun, 24 Mar 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711285096
