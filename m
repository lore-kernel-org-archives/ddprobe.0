Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FC5366
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 12:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649421238;
	h=To:Subject:From:Message-Id:Date;
	bh=SW7g0J+V+3+Tz5JAZOgYwcJ03aFYORrLl0HqTWQS3ew=;
	b=aDIevGw2fKtlhD9M/3eZqdihLxOMu7bVZdvPfRQPyNsTabJBSbSsbfmiFICJqiLO
	nl0Dq7D37PnE2ucQ/uxSieTa8DWpDzfytQf5CY8EElo55booM+wKOV5I65+34m6AUnk
	qQ+gUYCUdk58NFDrWGoT5mPcD2qRory6PXlJMmso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649421238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SW7g0J+V+3+Tz5JAZOgYwcJ03aFYORrLl0HqTWQS3ew=;
	b=LgDSTqyA3+zbIi7FbMtGpArMnIOQMtWHa74VUXmu6h1T2P6CWmcBDOSCBkESc8m+
	EjmWguL/h6wCykzzN3mEupjLqENYBv12m9pdWnamfxNejHxnu4zlZb2JsH+x6mgCi4W
	spO5ZECgIpOPC5GYVrUZ0+Yq2D6XhFiYdr+tOEN8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180092ac0b9-f911259c-fd16-4251-8e10-4e8c54af945f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa8b8a99a5158212b806c23502a46f5cd3f0ea4b9b097a9330cc7cc0b471aed0
Date: Fri, 8 Apr 2022 12:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649421238
