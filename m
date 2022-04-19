Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434C31399
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 21:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650403378;
	h=To:Subject:From:Message-Id:Date;
	bh=sSkkFHPjCz2HwxGCQwVWT0DtqGBGKQ1/U7BbUIZos+Y=;
	b=VE/4nDRiXYKgfl4hP0G5q1RzjHLwTz13jtahsE3GplsGLI+fY87HxqRnSODHS8XX
	jnvOYvS58Sd9pcGxUNFXts3eEBLfdohA/vF1VLqhdFrlj4KUs8AUjsYD80qniB2zp0Z
	zYF4P4AkLICCebiaa1rW2kQcESk7f27gftNGdnzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650403378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sSkkFHPjCz2HwxGCQwVWT0DtqGBGKQ1/U7BbUIZos+Y=;
	b=GYmT3zujHZ1XHYLiQ4HgQ1MKdHw2XmU7PyTXK5QDK+uhgogP39QJhQSLccLgIhsW
	emCg5BkwHyrrXZt4HFXiQoeFad5E8IwRRAiEagMckgJgJpebdd+sXPQVicZFQ0AS2WF
	I2o0On9rWqyUlfr48aK7BY1jEnyx9GeF8QvYg8q8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018043b50460-366222ea-89f6-455a-90fd-58c2d344f69f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b18129926251c574621cc0e40ab7e8428ce5b9b62ac9fcee985914871118ff6e
Date: Tue, 19 Apr 2022 21:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650403378
