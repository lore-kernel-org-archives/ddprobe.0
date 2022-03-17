Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D864A84
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647548184;
	h=To:Subject:From:Message-Id:Date;
	bh=CJbPSUbMy3FXRCamp/T4mJhGtcFRFz0RlL7NyJaV2yE=;
	b=cFKVI3kcucQ6kbp4AiAPkuc1QXIbt7CeaeUu9Vx03pVSqROlf+QPvN3Wc4p7vrIw
	lsb/PpkV908VtjKud7GFrq1Vg7sQgNKlFWwGrAylPUc+o6DS3xEDI5JMTudPjz/ZJ3i
	/0WEUZzWFVTGm9msSpMKtyFe2xYGIh8w48Tmb2tc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647548184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CJbPSUbMy3FXRCamp/T4mJhGtcFRFz0RlL7NyJaV2yE=;
	b=lEfk676MXYLj3JRBpOrNIlTc7txsavXHLAlOdxtLhYrigdCiDNxABn8TjFip7nKz
	86ZXOzYIo5P/fLESGhAySi1nYJWW6JNQ8EgEThVvxtAr53YzD4Gnx5guiaJ4jRzCE8Y
	5zR8GOsdMlJSEL2qNyHz3Qh4j4MhnM8kzQJKOHpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f998638d7-cd67720b-b450-40b7-8ae7-6add4afe7d5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66a820c28481732d54342746dab57ab54e18677670cc4f6f2309b93e7f371f03
Date: Thu, 17 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647548184
