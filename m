Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E927F62B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 10:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650191638;
	h=To:Subject:From:Message-Id:Date;
	bh=zBnBMdaxtNRx9KblBHtr2refaLRUL8JfYr/raxZoKlI=;
	b=bmuEOYoa7UN0nCOFfuYy48vZSzA8u8lCUVdn4++YkgNRKfe8PajpGBDOOQUY5juM
	Ra6gHnwf0PfaurnEhyibz9IIfQYONx1QnBbzfMkDCVAOGofoLHxse0hPWErTYRCNIo0
	Ij0sTOQ4l51mkUt4471CM08tZqqPoimoms+vNpQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650191638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zBnBMdaxtNRx9KblBHtr2refaLRUL8JfYr/raxZoKlI=;
	b=dbnlTCyQOUxcE7i4MV59PfYJbJLCPMglNqUW9n8XSJRh6Xk+plf4FVrFcQyoCvKf
	XjogKDx9wB1DZLh518MCyu6Id+iyx7gRS3O0pAi2D66Y3n/S6xzjYNar3MtCBG00av8
	X6ohbDE8eLOTxp13is1mznZitwQCxggOZIo84nRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018037161f18-d96effad-7594-4167-9810-4d5350357183-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2296a69a7f76a379450207abaa0337e98d2f12e9c43b32bb5543359015f6b685
Date: Sun, 17 Apr 2022 10:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650191638
