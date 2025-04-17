Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52BB250C16
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744898394; cv=none; b=KTVJldpXdOzrgPY+3ADLywkx352h5rgowPHBvguyOBx/odMi7qx0cpcAUphngGZVxmNT28Sra6GhcKYzY2HsrI/Je1feFUIwMAyZHIpUaI+jtgCR/mkS1IKgsKJ5OfXnOIPAHquBoDaOlVVOBx+ewAbNPRL9WaOA1XZQuFfj/+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744898394; c=relaxed/simple;
	bh=GIK33sIqNXGfIGm0joMv/Qo0NitofPbujXU1DQqsBxY=;
	h=To:Subject:From:Message-Id:Date; b=CqwCqj1m3uymvW2mgXQke6LX3BTFw9VyK/7shfRwrCd03XHo9P0MtY66AOtp57XnOKB6D0CFZ3unVjke+6Qnr7dlM/iZJDonxMjWuYpt+iYzjzFavp8SP0E33e3d23Cg1hAen8DnXx+mSBe58e3u7ZNhgwf8HaHjkPsLvP4q8G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJclrVub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJclrVub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23CAC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744898393;
	bh=GIK33sIqNXGfIGm0joMv/Qo0NitofPbujXU1DQqsBxY=;
	h=To:Subject:From:Date:From;
	b=UJclrVubc2pHzBiVm5rMqlqugSELRO6+NYigUuYxLxt83+1cJf8mNiH/45JJC7IYn
	 W9qhmJ0aSkNYYJ/dNZ+eGZPEWHyfuRkqZWQeUKazQv5xibu3oZhbBLllwcOFaq/b0l
	 47BaDghTVvQSgXXKfTtf1xTbYjzQEt48L6fU6k7P6EuUbMtANI99KlJueHrLgzFdxJ
	 uxjTySj7K4i9Yw7wIL3FJLfEl/RqyP8ZHB0WfDdvaESzhETZnTIOgA7LSv3xlh55MN
	 cN8JPu5xDRsOeSYK1Ltgwi11ooMzhQLSVxiyerew+duJT4iw+DQ0iA/u0KMrTRG3hU
	 j/IVL2MzQeACA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EDCC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489839365.23266.4901721913245127503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72b3e38956c9ef6655e991a2cc0dce5a58747a8dea4d17d62c76a18037ac833
Date: Thu, 17 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744898393
