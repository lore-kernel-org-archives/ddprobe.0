Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEE92D021
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXB1fkcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7944EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698314296;
	bh=Zw+6teWIUk2GFHhTG86GiljDDGExk/OzzVwJ5niINCs=;
	h=To:Subject:From:Date:From;
	b=DXB1fkcUo/dmNXmQsuFfHuuUi2i7KQTLgBn6SxfWfu2AP7i1nB+mlIsz3x3SfBKaB
	 n+6PGQgx3n73alFo7kkuSgjOEqmL6MdzYDt/FdZFAQVgMoC+GSJuNOXSKhaY+amMI4
	 vtZFvwBoIkwunytYtTcFSg5NUs/AAOL7DvfLdRm80s8UD3hzzsV9YSqVv3qhGbMI0g
	 XYpzw/ijkyGDTKYVbNwpfDVGT4iqER96OspXSZfy1rHdgFJAhrm9dw970fz2Ipdq1B
	 XwcNDPad7P0iOZo4PmlRd4tRtC+xI0aCwAe5jQDoRAe7+zTOZCFD2Eelz+IzkfaW3b
	 4Zy+0/B5Oo8Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F6DC25B6B
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169831429639.2444.13623513023069462998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c1000ae74bc32d070408d1d113e37c9f26dfccaf9e09d1963ecc245f5d9be2
Date: Thu, 26 Oct 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698314296
