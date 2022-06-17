Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8633201
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 15:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655478479;
	h=To:Subject:From:Message-Id:Date;
	bh=FxLFpwczJv9+dNwuGWM8DxDkDT6wUfe6U9a4mkrG1PY=;
	b=AzydHf1Siv5VCUzfxD4Ha7GlwEDZ4VTem4Svk52nHdnDmKn5fwyvsIjBOHEBsDIe
	xbNL0zfvl14FQrGGaZaIgsQFZcUewV0ugxu2pcsg5qLl72VVtg8nky4WRAjX2T7ew38
	kuznYAAYiHXVQdLvb1zdluuvwld7oc2RQpGi+SMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655478479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FxLFpwczJv9+dNwuGWM8DxDkDT6wUfe6U9a4mkrG1PY=;
	b=jseUFJoP1RQ4MqCqBObG1zIn2FMq6zlautRic7uF8Eu7vyOJQ4HIf2GSbvp8BwWE
	djXA4GUvz/ov1qp2cPRhRRQ+GwDnE2d8P5xXXGwGyryCPoQG9yWmrOLpLzMhSVElKP+
	L8nEqSGq+BYureHK5a/cYyGIdVXNGrpUQR+KzfCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817234e9ac-412ecdba-0acc-488b-8fdf-b3300d2bad46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ec7bb18322e757b6fd463cb64a36b09d4d563b1867e018a490f8c8f535a5c8a
Date: Fri, 17 Jun 2022 15:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655478479
