Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8815038642A
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779481954; cv=none; b=FxsV7ZYNuPD80BIBNJhiKmkWHwD2hvKTG7h+3/omN4rGjWUrn7dE/TLYqiflseWiB1+agjT/ECmLCNOEiXPl9uHss732VuVOsbhqOz1CutW6v3nCsM/2iV5y4lMO1oX0Q9T6Dh6bvKQvWGdUtUlBf4Yev/qi1a6kMXoepJ6XNcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779481954; c=relaxed/simple;
	bh=kGasYeDw02DKgLw9IGYNXW+Fc+oGB1vBw5BwanihuHA=;
	h=To:Subject:From:Message-Id:Date; b=iuPFyb6AyY5DtMbFtmLMPQO7qVSdTXPABVz4oIhbvXrrUXB8ALk6/pglV83XLETNov6PVgxnsGLJ2S7JMZIsuevIyf9qAoplaW+MuN4PoVqXBE2bIYYrLpsEzyHjLp4Mazz98t6IN9lAfzX7bXdlWNRe3AMc8kIWNe8h/BSq5hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLcBCd+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLcBCd+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD41C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779481953;
	bh=kGasYeDw02DKgLw9IGYNXW+Fc+oGB1vBw5BwanihuHA=;
	h=To:Subject:From:Date:From;
	b=pLcBCd+eqwTvJgkPQUCdEAiu0XRbUzDW8Hwhb33zBqH8SfgJj1wNDqdY7MKcy5ahV
	 fJnSAM/ri7OHn7HYIqKuMZherbloOvlSOvu0b91XHnfH7tJPRr7ZgXp4rmIMCqdxS3
	 aFGohBmACW2t/dN15/saCQLlvuw9DGtS+eIDqaCHJkY2cZ9V9eLmbsdEXTxSHt1kU8
	 Yjj7ZfUCxj5vFdTIMuclesnJFe1wen4IZkb7v+0Vj2O/DSZO9P0Y/CGXOC7PJ5vjWm
	 2oKqQYyiozuduslZUdW8YgJwXCNODLAv5Nz7dSNkOfAtuUQH5SISTaMnXqldpUVoz8
	 4wEVNSSpStMlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EE3CD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948195372.4281.5429313971989991245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5ae8a80cbeeec54adfd8b7fb369017a4ff95b44f98ac73b2a0e065fd1d2681
Date: Fri, 22 May 2026 20:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779481953
