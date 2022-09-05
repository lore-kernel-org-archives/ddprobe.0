Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0787D468E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A2DC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662400853;
	bh=QHysVoV7NfK3IKqwIxPiQyX4eVVP2gcK0/dNERSbyX8=;
	h=To:Subject:From:Date:From;
	b=S3uOKdcgnDjfIDWOZppzmVJPBum3Zhu37K6116s00DejNnw4k4jbzP61irDcJ9/nN
	 OTdcdCjTMTwzZyWeVnDlTTwoKIE5rayZc/7UXdeDDBXNOZo7l5Xl45+LV/vScPioc4
	 Zy9Dzm2ArFK954kxh5BUf6nlJ2qmJzO4/tHHawk9IkJI9BTFfwFf+vpn6mbGSlHwe9
	 Q6mN03eRUx1WxhOjIFSSccgjbOu+fJ5qRM67SVqwIxQaDop1YjwXfmFHfg9wpcG3V/
	 KITCJ+sBwlt+Ly8WZ7IsspmEPJznN4gs/619TWCI4hbCIF9fbL3MWC8im5qBbzd/tL
	 vOCRcy1XgGvlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8809EECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166240085354.21987.16960564389435792345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6994ac11393feaf072c6f9140c5956175a11a9bff0be32db661e0fb4a856ab2
Date: Mon, 05 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662400853
