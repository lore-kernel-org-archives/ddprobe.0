Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108AD7A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 08:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650355258;
	h=To:Subject:From:Message-Id:Date;
	bh=k+Unfd6TKtU/YkrpIqkOtkcvu3770wNgLcJBSOzSE2g=;
	b=PinhFsiS39Kjm1hE4eUe+o6wbMRMEmRJN1Fjo29ZImJwhO3PGlk7wHAbWyScXpAa
	CCZ5wx27wD+LvLe0k9hbjKBCaHMqx1i8B2FX84nGeEoJftBROXS3NvJHrn0gTG1Mpf7
	C7CcXde8bac5e1t6GBn7zz826n0D1IqbD8IuvV+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650355258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k+Unfd6TKtU/YkrpIqkOtkcvu3770wNgLcJBSOzSE2g=;
	b=EIyWS/b6RzJAigti8Edid7JF56gIy6Hm4nVd1z9fv610vWW7QQCh4ed3WecstCEO
	6d3zIDZVuWFMmy/ALLTuK3wSckO63Rv8PF6mMdaKdyOmJNtgp2V0OdTDY+Lg+6O04SD
	oqQlPZWQ9ISgpYL2C0uVdQUHQ1VMknS2ZrOKRNIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018040d6c37f-8118064a-fe47-4870-a888-5b89292685b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ead214dfcdda928f6fabfbe3d721ef19f3d34a11bb939812cf2774f79f63830a
Date: Tue, 19 Apr 2022 08:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650355258
