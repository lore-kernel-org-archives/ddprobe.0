Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E35EC5
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 07:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649574478;
	h=To:Subject:From:Message-Id:Date;
	bh=O5A9KS5Sn87SRq/WIWSRVGV3LaFpGkZqBUpd+heLl14=;
	b=U6BpdRoKYB5l8F214IN8Gyd65FKM1K6jyjsKRqjRvESfgb1aheO51z/dY+4h+pJb
	/T7TY0LjhtXmscOb9QzOhFEu4oGnDtTuKTHUWnWfUBiuMRxGz+j9NZqV3Ls0DSK984E
	u2VykiD1Mfc6/SoiGDA/oGU8tX1r+x31Mk41FBiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649574478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O5A9KS5Sn87SRq/WIWSRVGV3LaFpGkZqBUpd+heLl14=;
	b=Lqn8h7U5k4DjR8CzyV2wzqXdBif2MxLGv6EfI4EaqOo+Gh+dW2LcMrZae7zAhFCG
	yULjg3t34Rmx3vV2swSFn4OjwP5gjXeK28IufxreBm3v8ET+BSvRN76MPZov7X+3yUe
	hQL1ddC1XosrjXmgxmVU0yfdCAG4moynVxQHRHks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180124d01db-b5062812-28b1-450a-ba75-5d9dbe9bd10b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11c3a1dbb3e71e659f76ef250f32869df8dddd4679493be4bc07a9cff7ee4bed
Date: Sun, 10 Apr 2022 07:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649574478
