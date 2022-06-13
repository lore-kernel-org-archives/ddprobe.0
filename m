Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107561364
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 12:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655121719;
	h=To:Subject:From:Message-Id:Date;
	bh=2keUdXrXGyIB7teNuuFxV9s4IWEzzhOZ+h3W5yWW4b8=;
	b=d1ANeNDJD76DjWplNmv6aaWjqwRkfFJwLkBgxRYLRJzr6MPtBCv3tkB+2nIFPrIE
	jkMv/SEd6rwDpbj6SJux0FJagW2lb0TpTiuaFR1lCFlCnpFjMkduiG0R8lC7CjdyFgB
	uy9ndiQdWvJQQ097cY9V6fHY08408tofkJTLyYnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655121719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2keUdXrXGyIB7teNuuFxV9s4IWEzzhOZ+h3W5yWW4b8=;
	b=fJHxIScbkBdh1OruG34koJOpDKqU6YKuleEtn7o6YjqaoZST5YUaGhLdtro4XI2q
	l6ukt+PyDSigbPmksxx6Dm3dIJpzI7/wbn6euOZgEFkELjXPQqUsrwCK4m3WOLJhb+W
	ikIg5jlrgodSwFNYYA5lo1cHVHBrNg1L0GqNtWUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815cf13029-8ef78319-83fd-4223-b4db-a63948e4d38e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 460057496cf00459d93cd27f89b13b776833a5139727ceee578de20230cc6e80
Date: Mon, 13 Jun 2022 12:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655121719
