Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E4D17C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDEBC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664694653;
	bh=AbR7DkmlA4zLwlagUve7yMbYXa4ds6RmdwQG1HpTkb0=;
	h=To:Subject:From:Date:From;
	b=Zcru8yOSLpA4JXl/Uj/CzjrOsclSe7DIe3jFW49RWAGt/WBEkDgEXcsnXH0sgO9nE
	 3rX852OItkBqT0YXMSJwGVNwyCihwGougyg2kztgsgZghVe4EslmJjEU+H0XNJAmwC
	 Oaxze7iXppoygk97TFxhUbGFVFNwXzlt7IJrEdR2TL++/si+ZsGBDnaE/VdkGd3NRS
	 jnkyCLjmMZEgBnROPPLH7vuJAzw2vGF5cXuXv1wRaqgWa9DJHGnUKrv5b4av6E1PDK
	 r32cvJwFsYUE/LEtp/fq3KKcMaY1SMqbP+JRfMnoHZSa3YVrGHRoF9B3Sg939xqF8C
	 dv1V33Z4AkcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FDFC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166469465332.4711.5000412631514097679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7faee1423aea983b14c08170d834a47e02d67147819745ab64c8ff9bf04e27fd
Date: Sun, 02 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664694653
